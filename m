Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E47FA18BE5A
	for <lists+usrp-users@lfdr.de>; Thu, 19 Mar 2020 18:42:24 +0100 (CET)
Received: from [::1] (port=50650 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jEzBX-0006vO-AM; Thu, 19 Mar 2020 13:42:23 -0400
Received: from mail-wr1-f54.google.com ([209.85.221.54]:36819)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1jEzBT-0006oP-MN
 for USRP-users@lists.ettus.com; Thu, 19 Mar 2020 13:42:19 -0400
Received: by mail-wr1-f54.google.com with SMTP id s5so4215255wrg.3
 for <USRP-users@lists.ettus.com>; Thu, 19 Mar 2020 10:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=afTHTpAUiDwG9cbJXwONsQjGmVLRzLoZfDF0pJ9L2Q8=;
 b=C3yHu1WTSJ6zxrMQzuXSo452t3xM5JxRhIZ+HDuTDMSB8HP6tIqCzIsdUOVCH9+MZp
 +P4ryvvSbwaiW1uOBPE0tTb+U+RGcm+gvb3iiZ1PM/MMzJRsjxJYLIdwHRZRy2ayXpjM
 1l1rIwGOKZKPRQfLONBOHIJTco/WxQool7pqOwAZiAash8tH1usE10UH+w3q3NJOggIk
 VU6RHlUaEZJJ6TbzksOyIvyxe4w+R6UoCiQHqOQn1nYDd09uIztfkFxuM9u6BIVDGI9q
 BRe3sdD0gn/W3eiTjCG+3A4RUM6IETwhBEZfsxU/WmvGLnol5T8yGNYRYlKGSRSurUTf
 7Jnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=afTHTpAUiDwG9cbJXwONsQjGmVLRzLoZfDF0pJ9L2Q8=;
 b=nMxAJBX+ozGRa+1BC0ej4GDn2H3oX/jasuML5D5jrb2ekMrlvP62z5q640TxIlPiHA
 +dgB40A1T4G2OF44DIrzB82bW5NRAu4S45uPalkD2RNeSUYSp1BRR8m2295lRGplfz5J
 HGPWxlScv1ruMADF63xE/WFVKY5+eszrptyLlfSZ5MeoMIowoGPRH3bVIohGlpCMtOJW
 flEX0+HAZTSQ3Bd++x64ULcpiwnR982mYWAuG1DL/xtO/hN2qKpe2DMLOm3Hhuu9dltO
 3UZRxpodf/Rc0/NJjFYR8aaA6WalCAdjSsChd2ZNLf8Er/khEDjTk6p6GxptdOeQpjkM
 561Q==
X-Gm-Message-State: ANhLgQ0QxMdvIQxZn0DvKAaovzwYG67Ho3BgwhI1MkU4LlUkiXlSL9rj
 ALRBWZT0/lpV0HR3QZhs/IbE6OLXP+kRZA==
X-Google-Smtp-Source: ADFU+vvAeqLLClnd6NUfMUtciNSH3AIRFBxd4paN5tHU5CQcBd97Drms3RBFiZcQtKFOZzTPLfR89A==
X-Received: by 2002:adf:df91:: with SMTP id z17mr5336908wrl.97.1584639698682; 
 Thu, 19 Mar 2020 10:41:38 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-146.hsi.kabel-badenwuerttemberg.de. [46.223.163.146])
 by smtp.gmail.com with ESMTPSA id p10sm4608871wrx.81.2020.03.19.10.41.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Mar 2020 10:41:37 -0700 (PDT)
To: Basse Ang <b4ss3k@gmail.com>, USRP-users@lists.ettus.com, support@ettus.com
References: <CACcka+344PO4uhAemdNLmEwGw+sGucMiXPuRkzFcY6ikwegU7g@mail.gmail.com>
Message-ID: <4cf13326-747a-1330-807f-da552be3b714@ettus.com>
Date: Thu, 19 Mar 2020 18:41:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CACcka+344PO4uhAemdNLmEwGw+sGucMiXPuRkzFcY6ikwegU7g@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] UHD SSL Error
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

Hi Basse,

knowing our downloader, this is very likely a problem on your side: Is
it possible you have a HTTP proxy set up that does SSL tunneling, but
you've forgot to install the CA certificate, so that you don't trust
your own proxy?

Can you share the full output of

echo "http_proxy ${http_proxy} https_proxy ${https_proxy}"

and

/usr/lib/uhd/utils/uhd_images_downloader.py --help
/usr/lib/uhd/utils/uhd_images_downloader.py -V

please?

Best regards,
Marcus

On 19.03.20 16:35, Basse Ang wrote:
> Hi
> 
> just tried to install UHD into my ubuntu 14 hosts. doing for 2 months, I
> always ended with this error:
> 
> oai@oai:~$ /usr/lib/uhd/utils/uhd_images_downloader.py
> [INFO] Images destination: /usr/share/uhd/images
> [INFO] No inventory file found at /usr/share/uhd/images/inventory.json.
> Creating an empty one.
> [ERROR] Downloader raised an unhandled exception: [Errno 1] _ssl.c:510:
> error:14090086:SSL routines:SSL3_GET_SERVER_CERTIFICATE:certificate
> verify failed
> You can run this again with the '--verbose' flag to see more information
> If the problem persists, please email the output to: support@ettus.com
> <mailto:support@ettus.com>
> oai@oai:~$ /usr/lib/uhd/utils/uhd_images_downloader.py --verbose
> [INFO] Images destination: /usr/share/uhd/images
> [INFO] No inventory file found at /usr/share/uhd/images/inventory.json.
> Creating an empty one.
> [DEBUG] URLs to download:
> usrp1/fpga-6bea23d/usrp1_b100_fw_default-g6bea23d.zip
> x3xx/fpga-bb85bdff/x3xx_x310_fpga_default-gbb85bdff.zip
> usrp2/fpga-6bea23d/usrp2_n210_fpga_default-g6bea23d.zip
> n230/fpga-bb85bdff/n230_n230_fpga_default-gbb85bdff.zip
> usrp1/fpga-6bea23d/usrp1_b100_fpga_default-g6bea23d.zip
> b2xx/fpga-bb85bdff/b2xx_b200_fpga_default-gbb85bdff.zip
> usrp2/fpga-6bea23d/usrp2_n200_fpga_default-g6bea23d.zip
> e3xx/fpga-bb85bdff/e3xx_e320_fpga_default-gbb85bdff.zip
> n3xx/fpga-bb85bdff/n3xx_n310_fpga_default-gbb85bdff.zip
> b2xx/fpga-bb85bdff/b2xx_b205mini_fpga_default-gbb85bdff.zip
> x3xx/fpga-bb85bdff/x3xx_x300_fpga_default-gbb85bdff.zip
> octoclock/uhd-14000041/octoclock_octoclock_fw_default-g14000041.zip
> usrp2/fpga-6bea23d/usrp2_usrp2_fw_default-g6bea23d.zip
> usrp2/fpga-6bea23d/usrp2_n200_fw_default-g6bea23d.zip
> usrp2/fpga-6bea23d/usrp2_usrp2_fpga_default-g6bea23d.zip
> b2xx/uhd-2bdad498/b2xx_common_fw_default-g2bdad498.zip
> n3xx/fpga-bb85bdff/n3xx_n320_fpga_default-gbb85bdff.zip
> b2xx/fpga-bb85bdff/b2xx_b200mini_fpga_default-gbb85bdff.zip
> usrp1/fpga-6bea23d/usrp1_usrp1_fpga_default-g6bea23d.zip
> usb/uhd-14000041/usb_common_windrv_default-g14000041.zip
> usrp2/fpga-6bea23d/usrp2_n210_fw_default-g6bea23d.zip
> n3xx/fpga-bb85bdff/n3xx_n300_fpga_default-gbb85bdff.zip
> e3xx/fpga-bb85bdff/e3xx_e310_fpga_default-gbb85bdff.zip
> b2xx/fpga-bb85bdff/b2xx_b210_fpga_default-gbb85bdff.zip
> [ERROR] Downloader raised an unhandled exception: [Errno 1] _ssl.c:510:
> error:14090086:SSL routines:SSL3_GET_SERVER_CERTIFICATE:certificate
> verify failed
> You can run this again with the '--verbose' flag to see more information
> If the problem persists, please email the output to: support@ettus.com
> <mailto:support@ettus.com>
> oai@oai:~$
> 
> 
> I have already udate my certificate, but it does not help.
> 
> could anyone help me to figure out what should I do?
> 
> Thank you
> Bass

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
