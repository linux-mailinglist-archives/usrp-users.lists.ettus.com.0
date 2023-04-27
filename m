Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8D46F0A4D
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 18:54:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A78773845C0
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 12:54:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682614476; bh=EKDhwmyhbDyaBsv2ClHOveDkdchO8vrew6CH7a9onJk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=J6tajOvjPdxps4xoaI07ZTzyf492VCSmLJcrJDloJZ/VMTB1mfBhGVWiK0AY/LFL5
	 FJPLZCpwyydaRiRv/UzpKrRresGgxjPQw5Jud/bSUvziuMJ9fVRukazFaX+2lBpYY1
	 S619Aagm3pUn12q98MFTc3tK0x6MNwxT2vBj38RT7s6INllkUgkuANBDa6WDYtCbhD
	 I+KLBzSsYfQ/+XMpbTlZNw+xnW0GXOYn8qM3oEeRiq0YIUx8w/EA/s85Xu7gtdvf7c
	 C5sAmaGWHQC+0h17KV6VY/K1OQSFDdL99x4H+cNRKnERt+9x8FlppLleMY7dcd+r6r
	 eO3R84KZSFTFw==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 0A7AB38403C
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 12:53:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="p9DYvUY9";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-3f1f44d55cdso11202581cf.0
        for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 09:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682614437; x=1685206437;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RsH9IR+3jBxPZz9uvRMlSf3siCtaOdPvcSqgpwshgRA=;
        b=p9DYvUY9g+yEzWT82lqFUKAvwCzJFIsWlx3sF3j7vZrn7eELptGSDKF0TF2L+Lb4cg
         eKFAnOL476X1CL78X213Gb+/j28QGQKaxFKHJUpamdzV6r+O6+dSk0onnJxHtITnBnPx
         73/RXSuP9m6hoS/fQsUXHQAu1Y2xD7+Cw5PIMs9SLO1q0EWKKTsF5y9pzlTnPZG3k7fI
         Qc0TjFaQA9D8n+2FQuElLpey89wHtxKTSUgkBmZsKRmSVyAyC571Q5w9PTPKx/y73/xQ
         J0sE2IffJEufWDYFQ7BeEGwBOyYi6RgFfMlV65j6mcOYX2rDLc+DxJ9ovR3/ZIoRoLWi
         ldCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682614437; x=1685206437;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=RsH9IR+3jBxPZz9uvRMlSf3siCtaOdPvcSqgpwshgRA=;
        b=cQxZpyfZusSM59qIeIgF3VYjob4kpSDWUhv2M9Dqy+vB4WNG7W9M7OIaJfkN5WZI0+
         qUjLk1su6AVOCfygYVlI22P857uQSdehBzj6mObiZgqppzfC1fD2v0cH8SLw08nqAwhg
         5ih8yQbYKhDvB9Q9M0MdZGb9OMk3D5EeKqvK6KIXD1YcrrVe/Wr7U5aTLS9lp2jhofj0
         2eu3Fqk2cqJ/k+kigPk5X0XotsVmRIRBkj09r/WHKTUBVAhGmM8MFo6KbOT4GJrEEw2i
         e3TdhpAcBu0fZuxOBIM90g2gl1Te80ZrKb5X5Wm+GxQrCncO2HuzXPURsoYLELRN2OQj
         MJiA==
X-Gm-Message-State: AC+VfDx3jxf5t8z3iCJzNbdNSTtbDojFPpkm5nYnrLVyRxls3OTxskGD
	DtSVNq91XvmhprLSes4usKkkt7NNWEM=
X-Google-Smtp-Source: ACHHUZ4QKYSQfzd8DOwGyl891OI6H4biCOYbdhFUnxpfJUH1EqkxxYT2YAOB/YkiXPSGmzALNW9dWQ==
X-Received: by 2002:a05:622a:1649:b0:3f0:a3ae:7e69 with SMTP id y9-20020a05622a164900b003f0a3ae7e69mr3500834qtj.18.1682614437184;
        Thu, 27 Apr 2023 09:53:57 -0700 (PDT)
Received: from [192.168.2.159] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id m7-20020a05620a24c700b0074de8d07052sm6047168qkn.47.2023.04.27.09.53.56
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Apr 2023 09:53:56 -0700 (PDT)
Message-ID: <f35f1062-67fa-1d78-88c8-704977d155d5@gmail.com>
Date: Thu, 27 Apr 2023 12:53:56 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <vAyMTKyxqn7QxPMvWmk9Tn71qQ82D29kFKft3qfrvys@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <vAyMTKyxqn7QxPMvWmk9Tn71qQ82D29kFKft3qfrvys@lists.ettus.com>
Message-ID-Hash: UEE6LHWXBGBRCG3FARKP3SICVBM7F4SJ
X-Message-ID-Hash: UEE6LHWXBGBRCG3FARKP3SICVBM7F4SJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus N321 SFP streaming issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UEE6LHWXBGBRCG3FARKP3SICVBM7F4SJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3154075499556624089=="

This is a multi-part message in MIME format.
--===============3154075499556624089==
Content-Type: multipart/alternative;
 boundary="------------fvcopd3kbMCbD8tWHmkYzv8w"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------fvcopd3kbMCbD8tWHmkYzv8w
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 27/04/2023 12:46, jmaloyan@umass.edu wrote:
>
> I am able to succesfully use the device, I just cant use the 10Gbe, 
> which I need.
>
> When I run uhd_usrp_probe, I confirm that I am using version 4.4.0.0
>
Are you able to ping the SFP0 port on the N321 from your host?

Are you using 192.168.10.2 as the IP address of the streaming port (I 
think you are, just want to confirm).

Do you have MTU set to 9000 on your host network interface?






>
>     [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
>     UHD_4.4.0.HEAD-0-g5fac246b
>
>     [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>     mgmt_addr=192.168.1.151,type=n3xx,product=n320,serial=3255102,name=ni-n3xx-3255102,fpga=XG,claimed=False,addr=192.168.1.151
>
>     [INFO] [MPM.PeriphManager] init() called with device args
>     `fpga=XG,mgmt_addr=192.168.1.151,name=ni-n3xx-3255102,product=n320,clock_source=internal,time_source=internal'.
>
>     [INFO] [MPM.Rhodium-0] init() called with args
>     `fpga=XG,mgmt_addr=192.168.1.151,name=ni-n3xx-3255102,product=n320,clock_source=internal,time_source=internal'
>
>     [INFO] [MPM.Rhodium-1] init() called with args
>     `fpga=XG,mgmt_addr=192.168.1.151,name=ni-n3xx-3255102,product=n320,clock_source=internal,time_source=internal'
>
>     _____________________________________________________
>
>     /
>
>     | Device: N300-Series Device
>
>     | _____________________________________________________
>
>     | /
>
>     | | Mboard: ni-n3xx-3255102
>
>     | | dboard_0_pid: 338
>
>     | | dboard_0_serial: 3252A17
>
>     | | dboard_1_pid: 338
>
>     | | dboard_1_serial: 3252A18
>
>     | | eeprom_version: 3
>
>     | | fs_version: 20230131233809
>
>     | | mender_artifact: v4.4.0.0_n3xx
>
>     | | mpm_sw_version: 4.4.0.0-g5fac246b
>
>     | | pid: 16962
>
>     | | product: n320
>
>     | | rev: 10
>
>     | | rpc_connection: remote
>
>     | | serial: 3255102
>
>     | | type: n3xx
>
>     | | MPM Version: 4.4
>
>     | | FPGA Version: 8.1
>
>     | | FPGA git hash: 92c09f7.clean
>
>     | | RFNoC capable: Yes
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------fvcopd3kbMCbD8tWHmkYzv8w
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 27/04/2023 12:46, <a class="moz-txt-link-abbreviated" href="mailto:jmaloyan@umass.edu">jmaloyan@umass.edu</a>
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:vAyMTKyxqn7QxPMvWmk9Tn71qQ82D29kFKft3qfrvys@lists.ettus.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <p>I am able to succesfully use the device, I just cant use the
        10Gbe, which I need.</p>
      <p>When I run uhd_usrp_probe, I confirm that I am using version
        4.4.0.0</p>
    </blockquote>
    Are you able to ping the SFP0 port on the N321 from your host?<br>
    <br>
    Are you using 192.168.10.2 as the IP address of the streaming port
    (I think you are, just want to confirm).<br>
    <br>
    Do you have MTU set to 9000 on your host network interface?<br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <blockquote type="cite"
      cite="mid:vAyMTKyxqn7QxPMvWmk9Tn71qQ82D29kFKft3qfrvys@lists.ettus.com">
      <blockquote>
        <p><br>
        </p>
        <p>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
          UHD_4.4.0.HEAD-0-g5fac246b</p>
        <p>[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.1.151,type=n3xx,product=n320,serial=3255102,name=ni-n3xx-3255102,fpga=XG,claimed=False,addr=192.168.1.151</p>
        <p>[INFO] [MPM.PeriphManager] init() called with device args
`fpga=XG,mgmt_addr=192.168.1.151,name=ni-n3xx-3255102,product=n320,clock_source=internal,time_source=internal'.</p>
        <p>[INFO] [MPM.Rhodium-0] init() called with args
`fpga=XG,mgmt_addr=192.168.1.151,name=ni-n3xx-3255102,product=n320,clock_source=internal,time_source=internal'</p>
        <p>[INFO] [MPM.Rhodium-1] init() called with args
`fpga=XG,mgmt_addr=192.168.1.151,name=ni-n3xx-3255102,product=n320,clock_source=internal,time_source=internal'</p>
        <p> _____________________________________________________</p>
        <p> /</p>
        <p>| Device: N300-Series Device</p>
        <p>| _____________________________________________________</p>
        <p>| /</p>
        <p>| | Mboard: ni-n3xx-3255102</p>
        <p>| | dboard_0_pid: 338</p>
        <p>| | dboard_0_serial: 3252A17</p>
        <p>| | dboard_1_pid: 338</p>
        <p>| | dboard_1_serial: 3252A18</p>
        <p>| | eeprom_version: 3</p>
        <p>| | fs_version: 20230131233809</p>
        <p>| | mender_artifact: v4.4.0.0_n3xx</p>
        <p>| | mpm_sw_version: 4.4.0.0-g5fac246b</p>
        <p>| | pid: 16962</p>
        <p>| | product: n320</p>
        <p>| | rev: 10</p>
        <p>| | rpc_connection: remote</p>
        <p>| | serial: 3255102</p>
        <p>| | type: n3xx</p>
        <p>| | MPM Version: 4.4</p>
        <p>| | FPGA Version: 8.1</p>
        <p>| | FPGA git hash: 92c09f7.clean</p>
        <p>| | RFNoC capable: Yes</p>
      </blockquote>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------fvcopd3kbMCbD8tWHmkYzv8w--

--===============3154075499556624089==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3154075499556624089==--
