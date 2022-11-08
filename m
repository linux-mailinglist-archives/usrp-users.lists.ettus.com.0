Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D704621B6D
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 19:07:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 94C90383E9F
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 13:07:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667930820; bh=VuteeZ9cVKgAznpc/S0M32Ih36h23OnRxFbiteZCGX4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=dsTdBBmFAU+NN+fqWouH82IgYQJMI6Szpi3IhBC9le1Iek7X2q4Mot1svJ5JuEuTJ
	 QgHP57VB/aH6bY+aIZyFxfq58RjJ2VFRzU2HKdP+RxTtOW6/xV2XRF4fafdxGGJmN4
	 fHMFy0cd2Jkn6rv9zHhQuuMbv7MNfFNWJGQpjeV8Ess9pleD7/+h66aS/lNYyYsDBS
	 TpWvPxMLYyZkbX3TP4i4EBrI2HbXhhsvtH+SDh1BmAMbHMwoGyey3ahytxLHza9715
	 zvV8HYR++jOc0B9jwS5jcV3pmnGfKWNGweqf3+k5rldEbXgodkcaV7OCOejgEzG7vE
	 TV+BMn80yVX+Q==
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 062B8380964
	for <usrp-users@lists.ettus.com>; Tue,  8 Nov 2022 13:06:07 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="dqd6BjYd";
	dkim-atps=neutral
Received: by mail-ej1-f52.google.com with SMTP id ft34so4369669ejc.12
        for <usrp-users@lists.ettus.com>; Tue, 08 Nov 2022 10:06:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gaHZlpiW0mWZY2BjxMhSdD2ZFpZFe8jeiShHezZSAbg=;
        b=dqd6BjYd6YDguqKUXkmbU5tXD6MKAwXidtlDXZOUrwrAY/DoIZDc0ZjgkOFC7jq7Uz
         /ft6Chfw7ufbKc17aBv+MFH9datVu1b6+ZZYBYou502svwxhoGMQDugw6siRaDKBhw4F
         RHOELwzuIeKxjxt4vI8mNKNbqfXP154Sf5581Y6ybKrwXsnV8T5fOkzCnoeCujFOne9X
         GrifO6Q2sJZkTGZ1V4wKP0iH1IzQT7JZimhheKIImGCYteTHhHdj6XrmMABvx/iqQ/T1
         Ug7EG4qhse9mwSGqwYMazaowtbQpko21k0Gyg44MDy2Sxqcl9cJgDiRk1gRX4UVEugEW
         ox0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gaHZlpiW0mWZY2BjxMhSdD2ZFpZFe8jeiShHezZSAbg=;
        b=GT/l/zHJxsqdFltkyAUmavbmVjW/NLCMo/g2bb77LJD/LB40jmYtja5lwgPAAHAMwk
         UJD8oX+hEvnWzFJr4kQe3HNg14b5cYCZXGkCij3Rdp5PCnheGUyteUOLBHRx2K2Gp3x5
         GxDxQxKp7BXLsvGM1FogyTRIw8X5isQgOsYmpwI6BZs/v+Xc3SQ0LRaX7zo7KC7e6lB8
         x/TV4MC3RfwngVFcOZRGRJhy1v1y96/VR2pcsW1Byqfve+OMhERPgMpjlfRvbpvRA/Ow
         zhOKdO1smizmDPS5T1PgkNY+z3EH/c3fuoHxfxSlSLgFt/hgDuoXqU8qY3gKRtur1gTP
         s0wA==
X-Gm-Message-State: ACrzQf11F7bgDAyIsciE5V1cGFXyP8aSoKLuuG2Ra8ikw1xKqO9Egvmg
	IRs7MS25rLLucZH7hvcsQc1TF3xJAq2I44eD
X-Google-Smtp-Source: AMsMyM4ACseg6D47bR9GQSOnML5FOMgY3zfAO/DUv07okl0ZLrdx7ptJndKAZ0ND02GNameGKPFj7w==
X-Received: by 2002:a17:907:2c72:b0:7a4:a4b4:9fcb with SMTP id ib18-20020a1709072c7200b007a4a4b49fcbmr54291377ejc.403.1667930765648;
        Tue, 08 Nov 2022 10:06:05 -0800 (PST)
Received: from ?IPV6:2001:9e8:3843:4500:5bc8:3cc3:e10b:748e? ([2001:9e8:3843:4500:5bc8:3cc3:e10b:748e])
        by smtp.gmail.com with ESMTPSA id h6-20020a170906828600b00731803d4d04sm4851703ejx.82.2022.11.08.10.06.04
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 10:06:05 -0800 (PST)
Message-ID: <dff11eb8-57fe-43f8-912f-2ec886e69d92@ettus.com>
Date: Tue, 8 Nov 2022 19:06:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <RATU8dVGUgdeLnZt0VIkdpOwQjjJlUcVhHqwG3io80@lists.ettus.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <RATU8dVGUgdeLnZt0VIkdpOwQjjJlUcVhHqwG3io80@lists.ettus.com>
Message-ID-Hash: ROPV337424CHBWKOEDERH273EQ4A6MRH
X-Message-ID-Hash: ROPV337424CHBWKOEDERH273EQ4A6MRH
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Custom FPGA image "version" register
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ROPV337424CHBWKOEDERH273EQ4A6MRH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4466887159992833950=="

This is a multi-part message in MIME format.
--===============4466887159992833950==
Content-Type: multipart/alternative;
 boundary="------------erDcGHLOsrG6syx705rxQFI9"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------erDcGHLOsrG6syx705rxQFI9
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

It's actually set in the firmware software code, firmware/usrp3/x300/x300=
_main.c towards=20
the end. What the host-side UHD does is ask the firmware running on the X=
3x0 to reply with=20
the content of that piece of memory.

How to figure out such things: you see how the code you found access a le=
af "fw_version"=20
in the almighty property tree.
You either get very clever with your debugger, or you're like me and just=
 grep for=20
fw_version in the uhd/host/ source code for '"fw_version"', find where th=
at property is=20
created (host/lib/usrp/x300/x300_impl.cpp), then check that source code f=
ile for the=20
values/getters/setters that this property has, and see it is just in the =
end a value poked=20
(via `iface->peek32(SR_ADDR(X300_FW_SHMEM_BASE, X300_FW_SHMEM_COMPAT_NUM)=
);`) from the=20
firmware.
 From there, you go into uhd/firmware directory and find that place.

I'd honestly do roughly the same as for that firmware compatibility numbe=
r, but outside=20
the firmware, directly in FPGA fabric: you instantiate a settings_reg mod=
ule in your=20
verilog/VHDL, pick an address that isn't in use yet, and then query it fr=
om the iface with=20
peek just like the compat version getter does. I'd recommend copying an a=
lready=20
functioning settings_reg instance and modifying the address parameter acc=
ordingly :)

Best regards,
Marcus

On 08.11.22 18:47, ri28856@mit.edu wrote:

> I found the following line in uhd_usrp_probe that looks like it does wh=
at I=E2=80=99m looking for:
>
> |if (tree->exists(path / "fw_version")) {|
>
> |ss << "FW Version: " << tree->access<std::string>(path / "fw_version")=
.get()|
>
> |<< std::endl;|
>
> |}|
>
> The next question is where does the firmware version get set? I did som=
e poking around=20
> fpga/usrp3/top, but it=E2=80=99s not immediately obvious. Is this set s=
omewhere in the build=20
> scripts? I run the standard Makefile when I build my custom image. I wo=
uld like to write=20
> something so I can definitely distinguish this FPGA is running my modif=
ied firmware.
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------erDcGHLOsrG6syx705rxQFI9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>It's actually set in the firmware software code,
      firmware/usrp3/x300/x300_main.c towards the end. What the
      host-side UHD does is ask the firmware running on the X3x0 to
      reply with the content of that piece of memory. <br>
    </p>
    <p>How to figure out such things: you see how the code you found
      access a leaf "fw_version" in the almighty property tree.<br>
      You either get very clever with your debugger, or you're like me
      and just grep for fw_version in the uhd/host/ source code for
      '"fw_version"', find where that property is created
      (host/lib/usrp/x300/x300_impl.cpp), then check that source code
      file for the values/getters/setters that this property has, and
      see it is just in the end a value poked (via
      `iface-&gt;peek32(SR_ADDR(X300_FW_SHMEM_BASE,
      X300_FW_SHMEM_COMPAT_NUM));`) from the firmware. <br>
      From there, you go into uhd/firmware directory and find that
      place.<br>
    </p>
    <p>I'd honestly do roughly the same as for that firmware
      compatibility number, but outside the firmware, directly in FPGA
      fabric: you instantiate a settings_reg module in your
      verilog/VHDL, pick an address that isn't in use yet, and then
      query it from the iface with peek just like the compat version
      getter does. I'd recommend copying an already functioning
      settings_reg instance and modifying the address parameter
      accordingly :)</p>
    <p>Best regards,<br>
      Marcus<br>
    </p>
    <p>On 08.11.22 18:47, <a class=3D"moz-txt-link-abbreviated" href=3D"m=
ailto:ri28856@mit.edu">ri28856@mit.edu</a> wrote:</p>
    <blockquote type=3D"cite"
      cite=3D"mid:RATU8dVGUgdeLnZt0VIkdpOwQjjJlUcVhHqwG3io80@lists.ettus.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>I found the following line in uhd_usrp_probe that looks like it
        does what I=E2=80=99m looking for:</p>
      <p><code>if (tree-&gt;exists(path / "fw_version")) {</code></p>
      <p><code> ss &lt;&lt; "FW Version: " &lt;&lt;
          tree-&gt;access&lt;std::string&gt;(path / "fw_version").get()</=
code></p>
      <p><code> &lt;&lt; std::endl;</code></p>
      <p><code> }</code></p>
      <p>The next question is where does the firmware version get set? I
        did some poking around fpga/usrp3/top, but it=E2=80=99s not immed=
iately
        obvious. Is this set somewhere in the build scripts? I run the
        standard Makefile when I build my custom image. I would like to
        write something so I can definitely distinguish this FPGA is
        running my modified firmware. </p>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------erDcGHLOsrG6syx705rxQFI9--

--===============4466887159992833950==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4466887159992833950==--
