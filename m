Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D859B4BB9
	for <lists+usrp-users@lfdr.de>; Tue, 29 Oct 2024 15:07:29 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E08DC386188
	for <lists+usrp-users@lfdr.de>; Tue, 29 Oct 2024 10:07:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730210847; bh=P2l/ApstgKzUJgnH/maFoSUU8UAsSmIUhFbnGUsDDlM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=FcWc/1T4XNXv11so6sDbOkxaQ8Ag+pDmYYEpYSW1fYLR4qiXFxnYc7QEp/jQutiqN
	 GhtIxZxA/yZnHdrBoEpDfj23BiISEBV3GzRuYtkplDYLQfcqLLFVRoVMkzkFgaDdOK
	 qEJarwMBRpu8UIc4j+H+4FDYABtNMtBIrV69FNcr1EwkVmlXSNqEvkIeUlDkqqSWZh
	 HkUUba67ezO3/hC92xATK4DNGaDW0oBkt1GIl30vtKGZcFZFUJ5Vz1fAir8TrhRRI2
	 NdYUfYUCeukkPLu5CnVVtMH3Fb2bQzM2YCcVj0DEB4Qqkr7Qfp0oiszesoBxUmEo4T
	 wmWZbY4GGAiiA==
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by mm2.emwd.com (Postfix) with ESMTPS id D817738659E
	for <usrp-users@lists.ettus.com>; Tue, 29 Oct 2024 10:07:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GREn6TTz";
	dkim-atps=neutral
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-7b15eadee87so403967485a.2
        for <usrp-users@lists.ettus.com>; Tue, 29 Oct 2024 07:07:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730210832; x=1730815632; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zvU3Z7044eqRry5kHoAtX8is8iv8feyHzW8o27L9J8Q=;
        b=GREn6TTzweeHNNsD1kBJt5VFxR3JIJCM7WNGXn7+yF1TS7wBS+06krWqFwl66cD7X0
         sTWbpViVKRt7ElFyTVvfqyIcPPGAaeOISmO2pkruuiKdgMAKsDX/d/HfGFABLSb5JLqJ
         COGzXP1zLjhfSnMVP4aQqYsRHuxlCLxy2OxAlz+wf69SloovldbVoEn85Eav8sEAKk+e
         FcsB4/Ho65wvBhCSWIoXH0+X5rjf6FEpelUVzEgKJdjxkP8y5TysfW8KSLCbfJ4ujOuf
         534qXAPq1TddT6/f9VqEuiLp+VYJUFIFW8m/AbL8fJuAZpyVnHFzzuCr1e9AU8FKV7an
         X0rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730210832; x=1730815632;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zvU3Z7044eqRry5kHoAtX8is8iv8feyHzW8o27L9J8Q=;
        b=he2REfmbwG7bcVQsY3N10Xbq93ZQHKoRl8lazJi82+fPPYRjdxSuYxXUZHozjcssf1
         pFtgxMYekfYR5/2u1cb+hFr7MM+5vVjVBpffAcItAXY6iDrvtBboE3lvR2uFitNlqpBa
         yktEtirAzv4e8zaQBredgU7AUNRIZhqCB7DsaQYNzfHvdxq4gE91D4Ndkubuelg/ng9M
         q4fUgyaYV2zAdMXaCZgS5G9b9Bsb9dJk79kiiSn5I5QMta0+708cyu3yORvgMpKJZOEN
         5q6wltIxZXsXPko6vROC3QFzcSSA12sIZOB+2rf4YFw7mAmwQGYaTxqlHt0oLH6eXmlf
         mUVw==
X-Gm-Message-State: AOJu0YxSf5+m58BbN4nVHPvQuUOFaFGwat2npW2sjnB6Sjnn762ztchq
	K15pmYLevBeXc6c/30uGRYdciz7pIMn4w8hzfh85upTG3TUptYy5nlkfkA==
X-Google-Smtp-Source: AGHT+IELJ7TTj4eL8xamaaI/UAO+T9IeoDrTbIC5chxOX8EY4IR0/xuT/Ja2yII4nyh8+yZZyBofGQ==
X-Received: by 2002:a05:620a:24d3:b0:7b1:12df:2589 with SMTP id af79cd13be357-7b193ed72a6mr1760544585a.7.1730210831915;
        Tue, 29 Oct 2024 07:07:11 -0700 (PDT)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7b18d345a9fsm417580885a.103.2024.10.29.07.07.11
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2024 07:07:11 -0700 (PDT)
Message-ID: <48569545-98d6-4071-a613-293ffb0da6d7@gmail.com>
Date: Tue, 29 Oct 2024 10:07:00 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <wZmlG8FtEnXi9wyjgQpNyyGDe2m1QAZMLsi9PQ8WtxM@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <wZmlG8FtEnXi9wyjgQpNyyGDe2m1QAZMLsi9PQ8WtxM@lists.ettus.com>
Message-ID-Hash: ZN5MLK3STU2KVYTLNFFXNIRGYKW7WQMO
X-Message-ID-Hash: ZN5MLK3STU2KVYTLNFFXNIRGYKW7WQMO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error: RuntimeError: Failure to create rfnoc_graph on USRP N310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZN5MLK3STU2KVYTLNFFXNIRGYKW7WQMO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0300054928441072740=="

This is a multi-part message in MIME format.
--===============0300054928441072740==
Content-Type: multipart/alternative;
 boundary="------------z0AHAwW0E0AU60vFq2VIj8cw"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------z0AHAwW0E0AU60vFq2VIj8cw
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 29/10/2024 05:43, pigatoimdeafrancesco@gmail.com wrote:
>
> Hello,
>
> I am having trouble setting up the USRPN310. Logs of $ 
> uhd_find_devices are:
>
> ERROR: ld.so <http://ld.so/>: object '/opt/uhd/lib/libuhd.so.4.4.0' 
> from LD_PRELOAD cannot be preloaded (cannot open shared object file): 
> ignored. [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; 
> UHD_4.4.0.HEAD-0-g5fac246b
>
>
>     - UHD Device 0
>
> Device Address: serial: 3249D76 addr: 192.168.20.2 claimed: False 
> fpga: XG mgmt_addr: 192.168.10.2 mgmt_addr: 192.168.20.2 name: 
> ni-n3xx-3249D76 product: n310 type: n3xx
>
> The command $ uhd_usrp_probe highlights issues regarding the host-USRP 
> connection:
>
> ERROR: ld.so <http://ld.so/>: object '/opt/uhd/lib/libuhd.so.4.4.0' 
> from LD_PRELOAD cannot be preloaded (cannot open shared object file): 
> ignored. [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; 
> UHD_4.4.0.HEAD-0-g5fac246b [INFO] [MPMD] Initializing 1 device(s) in 
> parallel with args: 
> mgmt_addr=192.168.10.2,type=n3xx,product=n310,serial=3249D76,name=ni-n3xx-3249D76,fpga=XG,claimed=False,addr=192.168.20.2 
> [WARNING] [MPM.RPCServer] A timeout event occured! [INFO] 
> [MPM.PeriphManager] init() called with device args 
> `fpga=XG,mgmt_addr=192.168.10.2,name=ni-n3xx-3249D76,product=n310,clock_source=internal,time_source=internal'. 
> [ERROR] [RFNOC::MGMT] EnvironmentError: IOError: recv error on socket: 
> Connection refused [ERROR] [RFNOC::GRAPH] IO Error during GSM 
> initialization. EnvironmentError: IOError: recv error on socket: 
> Connection refused [ERROR] [RFNOC::GRAPH] Caught exception while 
> initializing graph: EnvironmentError: IOError: recv error on socket: 
> Connection refused Error: RuntimeError: Failure to create rfnoc_graph.
>
> Can anybody help me with this? Thanks.
>
> Regards,
>
> Francesco
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Can you ping the N310 at the given address?

Is your firewall configured to allow packets to port 49152?


--------------z0AHAwW0E0AU60vFq2VIj8cw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 29/10/2024 05:43,
      <a class="moz-txt-link-abbreviated" href="mailto:pigatoimdeafrancesco@gmail.com">pigatoimdeafrancesco@gmail.com</a> wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:wZmlG8FtEnXi9wyjgQpNyyGDe2m1QAZMLsi9PQ8WtxM@lists.ettus.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <p>Hello,</p>
      <p>I am having trouble setting up the USRPN310. Logs of $
        uhd_find_devices are:</p>
      <p>ERROR: <a href="http://ld.so/" moz-do-not-send="true">ld.so</a>:
        object '/opt/uhd/lib/libuhd.so.4.4.0' from LD_PRELOAD cannot be
        preloaded (cannot open shared object file): ignored. [INFO]
        [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
        UHD_4.4.0.HEAD-0-g5fac246b</p>
      <h2>- UHD Device 0</h2>
      <p>Device Address: serial: 3249D76 addr: 192.168.20.2 claimed:
        False fpga: XG mgmt_addr: 192.168.10.2 mgmt_addr: 192.168.20.2
        name: ni-n3xx-3249D76 product: n310 type: n3xx</p>
      <p>The command $ uhd_usrp_probe highlights issues regarding the
        host-USRP connection:</p>
      <p>ERROR: <a href="http://ld.so/" moz-do-not-send="true">ld.so</a>:
        object '/opt/uhd/lib/libuhd.so.4.4.0' from LD_PRELOAD cannot be
        preloaded (cannot open shared object file): ignored. [INFO]
        [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
        UHD_4.4.0.HEAD-0-g5fac246b [INFO] [MPMD] Initializing 1
        device(s) in parallel with args:
mgmt_addr=192.168.10.2,type=n3xx,product=n310,serial=3249D76,name=ni-n3xx-3249D76,fpga=XG,claimed=False,addr=192.168.20.2
        [WARNING] [MPM.RPCServer] A timeout event occured! [INFO]
        [MPM.PeriphManager] init() called with device args
`fpga=XG,mgmt_addr=192.168.10.2,name=ni-n3xx-3249D76,product=n310,clock_source=internal,time_source=internal'.
        [ERROR] [RFNOC::MGMT] EnvironmentError: IOError: recv error on
        socket: Connection refused [ERROR] [RFNOC::GRAPH] IO Error
        during GSM initialization. EnvironmentError: IOError: recv error
        on socket: Connection refused [ERROR] [RFNOC::GRAPH] Caught
        exception while initializing graph: EnvironmentError: IOError:
        recv error on socket: Connection refused Error: RuntimeError:
        Failure to create rfnoc_graph.</p>
      <p>Can anybody help me with this? Thanks.</p>
      <p>Regards,</p>
      <p>Francesco</p>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    Can you ping the N310 at the given address?<br>
    <br>
    Is your firewall configured to allow packets to port 49152?<br>
    <br>
    <br>
  </body>
</html>

--------------z0AHAwW0E0AU60vFq2VIj8cw--

--===============0300054928441072740==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0300054928441072740==--
