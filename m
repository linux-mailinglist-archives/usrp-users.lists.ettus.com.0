Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D98B5A4BC7
	for <lists+usrp-users@lfdr.de>; Mon, 29 Aug 2022 14:28:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DB90538A207
	for <lists+usrp-users@lfdr.de>; Mon, 29 Aug 2022 08:28:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1661776080; bh=0zIq5zUuayiB8iDEsN6t+bZaHDG7QXoOSfXPVg6OGeY=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=P47UX2a7kEhogLXytz/GYP69+iKss4i6hK0PX3V1t7i9WqYHSCSDo7nvntOAJ8w4R
	 lsttWl845H3afdnVYNz9cPhaVNRqVWOzF4JfITrCFld/sge4vuo9+W8WyYPb3s/2SZ
	 T0HlXJlaBWPzgqOTjM25gh71Pn278T0g3JpSK0sLGtXddwnTHXr0nl/5Pznde8DQCx
	 5/KeTXhqkSnVG8Zi1olbpIaR+6YHLSQydtbkbh8nxTMMEeBEo4a6I6bPpAjfo8tpiX
	 uQgcPSUnjTCb525DhMhCJYCP08JIRydXyTajZxWo7PIPk5NEq6uXszAftCBK2jr6yz
	 KAY1BID1hdngw==
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 644BE389005
	for <usrp-users@lists.ettus.com>; Mon, 29 Aug 2022 08:26:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UEcJhkxv";
	dkim-atps=neutral
Received: by mail-oo1-f44.google.com with SMTP id q6-20020a4aa886000000b0044b06d0c453so1420483oom.11
        for <usrp-users@lists.ettus.com>; Mon, 29 Aug 2022 05:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc;
        bh=9QI3uwJ7zPeTwa0+vRnjAr3tBGIE4MZq/oYGIIMbDgs=;
        b=UEcJhkxvbJ4/duqXu8YN3qoCMKzoheMl/d5dI9NiYwtrC3fxQdhBIs0VCrOisBZ5Yo
         1CwLWKEot/IPwSOeo65ALAL7O99QAxhl/hRT/K0387ImWp91FqUbJjss+O++L/Zw5Oaf
         FO9yRPB+5PsbrkkPbgf/P0qlghMtpbb/9YH3mlphE33EVhi8+i9HhOemWGaN/R/eIrPi
         +4Zh6MtDqX/Bcfb2IB3qnMqzOAVp66xu13FzHnhg3WLH9fJL5RNKPEkJeKh4tu92jJIf
         iUWjW3X8saa41da+TnGw9BEmOLki1YH7PTVQOVs42b7BWV26f3VKZBrfvMYSLO934axs
         4t3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc;
        bh=9QI3uwJ7zPeTwa0+vRnjAr3tBGIE4MZq/oYGIIMbDgs=;
        b=rGkWZmViwrx0Drro3NSe6OAK7BabfgIu7eWkmU6qyChHlS1zQ2PdZ28kQOvUY6SiOX
         h1GUwwOIERrj4ARO2S+Xfz+tX1ymnDNtwoXZnpEXw05/q7eeDaluaH+sbpvUCkIu2hh5
         8dG+VVCW/gcnOj1jytMy6581R3UQmRVUNQ7R+SsRO5NLnE3EmauEnkI7iqxeh30oso5y
         cqnyOZb6uUGh78UESVqsw8HjKCKt5g0+yu2nTP95eDlG2JdE/5uBJXNeN3FlqLDbWTNn
         yaiPfFiGWHnCC3Yu2ew3+uqwl2KAzEf3cTOXCCOFhFkNkFjLtYqvSdJrZ/3FMD4XT2Av
         0bng==
X-Gm-Message-State: ACgBeo22I2mBaqua8PglUbOCY22FaLUIqYYZBb0REkg7xaSPVNxJFYmx
	kq4hFgq95Wjm7Hy/t7xMpZV5+RdMgszy+90Ncg==
X-Google-Smtp-Source: AA6agR7SzaqpV/5BCpeO9lRuMSgm8aya8u7TLRs9Z+mMbH3As3hoy20v98brd0RC+JIFWBV7bu7PRxKrCn7rH4yT8dk=
X-Received: by 2002:a4a:d518:0:b0:444:936f:7c1d with SMTP id
 m24-20020a4ad518000000b00444936f7c1dmr5412615oos.23.1661775995572; Mon, 29
 Aug 2022 05:26:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PupWnTfTXCfZ5ENm5ixSQbgqh+SgRpA4-7hsrXLvA5thQ@mail.gmail.com>
 <CALooG3_c9Pfr1vRG3zohhNwdFYZFxE2UC2eaej58-+3M-Tyi+A@mail.gmail.com> <CAA=S3Put=+CqGSkY64jx+FQno_cJObgX9EPVKmLQasO==+k9mw@mail.gmail.com>
In-Reply-To: <CAA=S3Put=+CqGSkY64jx+FQno_cJObgX9EPVKmLQasO==+k9mw@mail.gmail.com>
From: =?UTF-8?B?WWFzaXIgw5Z6w6dhbMSxaw==?= <simultaneous11@gmail.com>
Date: Mon, 29 Aug 2022 15:26:24 +0300
Message-ID: <CALooG38aXimqfZD6EBNEcxPOngf1siSqj+XGRT6fQsij3RY35A@mail.gmail.com>
To: sp <stackprogramer@gmail.com>, usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: NWIORRD73BS5NWIE4YIBDAZDEXUT5KW6
X-Message-ID-Hash: NWIORRD73BS5NWIE4YIBDAZDEXUT5KW6
X-MailFrom: simultaneous11@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0x2cd7049b, 0xffff
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NWIORRD73BS5NWIE4YIBDAZDEXUT5KW6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4030395004052550632=="

--===============4030395004052550632==
Content-Type: multipart/alternative; boundary="000000000000e9946505e7605f14"

--000000000000e9946505e7605f14
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If so, there must be a .so file somewhere for lib. If you used
rfnoc-example, it would be under build/lib folder. You must export its path
in order to not get that warning (btw it is not an error, it is warning.).
The reason for warning is it cannot find your custom block while calling
uhd_usrp_probe. If you export your .so file's path, you can get rid of
that.
Example for export : "export
UHD_MODULE_PATH=3D<path_to_so_file>/librfnoc-example.so" (Since you did not
use rfnoc-example, name of the file should be different)
 If you call this in terminal before uhd_usrp_probe, then you should not
see that warning.

Yasir

sp <stackprogramer@gmail.com>, 29 A=C4=9Fu 2022 Pzt, 15:03 tarihinde =C5=9F=
unu yazd=C4=B1:

> Thanks very much, I created a bitstream for a custom rfnoc block, I don't
> use an RFNOC example....
>
> On Mon, Aug 29, 2022 at 1:26 PM Yasir =C3=96z=C3=A7al=C4=B1k <simultaneou=
s11@gmail.com>
> wrote:
>
>> Hi sp,
>> can you give the details about how you generated bitstream with RFNoC
>> block. Did you use rfnoc-example, also did you generate bitstream with
>> default codes or did you add your own block into RFNoC?
>>
>> sp <stackprogramer@gmail.com>, 29 A=C4=9Fu 2022 Pzt, 10:14 tarihinde =C5=
=9Funu
>> yazd=C4=B1:
>>
>>> When I built FPGA for RFNOC block I faced with strange error...I
>>> check the FPGA source and RFNOC CPP source every id is ok but my code
>>> doesn't work correctly...
>>> ????
>>> Can any help me?
>>> uhd_usrp_probe
>>> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
>>> UHD_4.2.0.0-0-unknown
>>> [INFO] [X300] X300 initialization sequence...
>>> [INFO] [X300] Maximum frame size: 1472 bytes.
>>> [INFO] [X300] Radio 1x clock: 200 MHz
>>> [WARNING] [UDP] The recv buffer could not be resized sufficiently.
>>> Target sock buff size: 2453333 bytes.
>>> Actual sock buff size: 212992 bytes.
>>> See the transport application notes on buffer resizing.
>>> Please run: sudo sysctl -w net.core.rmem_max=3D2453333
>>> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>>> Target sock buff size: 2453333 bytes.
>>> Actual sock buff size: 212992 bytes.
>>> See the transport application notes on buffer resizing.
>>> Please run: sudo sysctl -w net.core.wmem_max=3D2453333
>>> [WARNING] [UDP] The current recv_buff_size of 212992 is less than the
>>> minimum recommended size of 816000 and may result in dropped packets on
>>> some NICs
>>> [WARNING] [UDP] The current send_buff_size of 212992 is less than the
>>> minimum recommended size of 307200 and may result in dropped packets on
>>> some NICs
>>> [WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID
>>> 0x2cd7049b, 0xffff
>>> [INFO] [0/Block#0] Setting default MTU forward policy.
>>> [WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID
>>> 0xf0c66ff1, 0xffff
>>> [INFO] [0/Block#1] Setting default MTU forward policy.
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--000000000000e9946505e7605f14
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If so, there must be a .so file somewhere for lib. If you =
used rfnoc-example, it would be under build/lib folder. You must export its=
 path in order to not get that warning (btw it is not an error, it is warni=
ng.). The reason for warning is it cannot find your custom block while call=
ing uhd_usrp_probe. If you export your .so file&#39;s path, you can get rid=
 of that.=C2=A0<div>Example for export : &quot;export UHD_MODULE_PATH=3D&lt=
;path_to_so_file&gt;/librfnoc-example.so&quot; (Since you did not use rfnoc=
-example, name of the file should be different)</div><div>=C2=A0If you call=
 this in terminal before uhd_usrp_probe, then you should not see that warni=
ng.</div><div><br></div><div>Yasir</div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">sp &lt;<a href=3D"mailto:stackprogr=
amer@gmail.com">stackprogramer@gmail.com</a>&gt;, 29 A=C4=9Fu 2022 Pzt, 15:=
03 tarihinde =C5=9Funu yazd=C4=B1:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr">Thanks very much, I created a bitstream=
 for a custom rfnoc block, I don&#39;t use an RFNOC example....<br></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, =
Aug 29, 2022 at 1:26 PM Yasir =C3=96z=C3=A7al=C4=B1k &lt;<a href=3D"mailto:=
simultaneous11@gmail.com" target=3D"_blank">simultaneous11@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr">Hi sp,<div>can you give the details=C2=A0about how you generated =
bitstream=C2=A0with RFNoC block.=C2=A0Did you use rfnoc-example, also did y=
ou generate bitstream with default=C2=A0codes or did you add your own block=
 into RFNoC?</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">sp &lt;<a href=3D"mailto:stackprogramer@gmail.com" target=
=3D"_blank">stackprogramer@gmail.com</a>&gt;, 29 A=C4=9Fu 2022 Pzt, 10:14 t=
arihinde =C5=9Funu yazd=C4=B1:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr">When I built FPGA for RFNOC block I faced w=
ith strange error...I check=C2=A0the FPGA source and RFNOC CPP source every=
 id is ok but my code doesn&#39;t work correctly...<div>????</div><div>Can =
any help me?<div>uhd_usrp_probe<br>[INFO] [UHD] linux; GNU C++ version 9.4.=
0; Boost_107100; UHD_4.2.0.0-0-unknown<br>[INFO] [X300] X300 initialization=
 sequence...<br>[INFO] [X300] Maximum frame size: 1472 bytes.<br>[INFO] [X3=
00] Radio 1x clock: 200 MHz<br>[WARNING] [UDP] The recv buffer could not be=
 resized sufficiently.<br>Target sock buff size: 2453333 bytes.<br>Actual s=
ock buff size: 212992 bytes.<br>See the transport application notes on buff=
er resizing.<br>Please run: sudo sysctl -w net.core.rmem_max=3D2453333<br>[=
WARNING] [UDP] The send buffer could not be resized sufficiently.<br>Target=
 sock buff size: 2453333 bytes.<br>Actual sock buff size: 212992 bytes.<br>=
See the transport application notes on buffer resizing.<br>Please run: sudo=
 sysctl -w net.core.wmem_max=3D2453333<br>[WARNING] [UDP] The current recv_=
buff_size of 212992 is less than the minimum recommended size of 816000 and=
 may result in dropped packets on some NICs<br>[WARNING] [UDP] The current =
send_buff_size of 212992 is less than the minimum recommended size of 30720=
0 and may result in dropped packets on some NICs<br>[WARNING] [RFNOC::BLOCK=
_FACTORY] Could not find block with Noc-ID 0x2cd7049b, 0xffff<br>[INFO] [0/=
Block#0] Setting default MTU forward policy.<br>[WARNING] [RFNOC::BLOCK_FAC=
TORY] Could not find block with Noc-ID 0xf0c66ff1, 0xffff<br>[INFO] [0/Bloc=
k#1] Setting default MTU forward policy.<br></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000e9946505e7605f14--

--===============4030395004052550632==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4030395004052550632==--
