package com.lzhpo.common.run.start;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.UnknownHostException;

/**
 * SpringBoot启动成功之后执行的代码
 *
 * @author lzhpo
 */
@Component
@Slf4j
public class ApplicationRunnerImpl implements ApplicationRunner {

    @Value("${server.port}")
    private Integer serverPort;

    @Override
    public void run(ApplicationArguments args) throws Exception {
        InetAddress localHost = null;
        try {
            localHost = Inet4Address.getLocalHost();
        } catch (UnknownHostException e) {
            log.error(e.getMessage(),e);
        }
        assert localHost != null;
        String ip = localHost.getHostAddress();
        System.out.println("----------------------------------------");
        System.out.println("启动成功：http://" +ip +":" +serverPort);
        System.out.println("----------------------------------------");
    }
}
