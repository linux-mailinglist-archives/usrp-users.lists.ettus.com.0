Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8325A62A1
	for <lists+usrp-users@lfdr.de>; Tue, 30 Aug 2022 13:59:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 754883863EE
	for <lists+usrp-users@lfdr.de>; Tue, 30 Aug 2022 07:59:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1661860748; bh=nsQCB+1Q4DrfRnQNJT6TYqgzBmYcsvQ1fG1uTIsjgQI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=DyMwclvnCSEV/iL/our++c7AoB9ocnSEFgnCM6Av3HWuf84jm7jGcsTkTkdIVujtn
	 bK+LIlfZfyNh79ZagNZtyS06OJudFG0fTA839DCAYRU9mhBwptKEqb4jmGUuHo1Adv
	 9oU+T5wG3iiaiXnUbAIHpGf5EfOxoyE9fo9yGIy5Hs//Y1GcQzdnmaFy436zRqriHn
	 ybPAGtiR+kHdel2TNSOvS4fE6fikhQp4wQU929rWyXjRwIEybQRCWQWIx2vLccyTVi
	 e01ylszxVKydfSHaVti49RxBH587rV+HavU2D7cwrS7vNCHK4M4rybX0dYqnMT/tLT
	 0yE2Lav6BLvQg==
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 50AD43863EE
	for <usrp-users@lists.ettus.com>; Tue, 30 Aug 2022 07:57:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="n6MmRVy2";
	dkim-atps=neutral
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-33dc345ad78so266863247b3.3
        for <usrp-users@lists.ettus.com>; Tue, 30 Aug 2022 04:57:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=5hVZKsVHVZ8FSguYYqPcbi8AMm+O+RQSVka3rZZ37SI=;
        b=n6MmRVy2F+IMO/bdoNgoVQxJ6+2iRMYSUNWfHWOohwjEMcmN6nDL3CayxvYxFRlnYg
         EOsL4zgA1DYWxywdWSY+MDgvib7P+Lqt0e2yVNG0uim96sNkF2/lI/fWaJ2/yi29aTs5
         S6yiemsb+NzCPa9/av43hlpxkSBWzsf0wy7ZjlDLq3DqxbGLzwrRWv6/W6UrI86kSyGj
         kC1zglZFlunv/o7RPYBAENXBeO275Lrr2kY/OEvOV7bpVLoj+D/r2ks16S1esmblL40/
         CWK3WOTJ+ASJVBiz0mTJmry+v0ZRdS8lv6OEnJpIPpcNE/d32Q/oiLf+6hy9oGy6NaiD
         O9hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=5hVZKsVHVZ8FSguYYqPcbi8AMm+O+RQSVka3rZZ37SI=;
        b=vTUoUyCMfkenqoXdFzVPbmi52oSsC6qwqXjVA5aUrp+sJyRGOMtWTyLD6RnSSdj12p
         GPjt0kTYKrhKG5xXhmJyTpm6ZFz+jjcL3j8AJDr9WyNHAlGmphfLCloMwZKnmLfemaY3
         4jV9CJzPDB9e3i+LMTEgBmZRecnj0SYbBMMoS83lTaPooWtEDGrD6jiel2qwLOTCl9wD
         Ftoa4e2LUpDgTkrevsGDvYnyKMx+99vbbb6WkqSWzDrTIKFS9h5rOmoPgTvrIhWqp4vv
         tBbcApTjByfpy7cE8Pwj9SYzfOyKp4BQuHZpBYh7i7F1A1WU14B+qSiAXBsvaGuJxEgz
         laXw==
X-Gm-Message-State: ACgBeo20SbL6E68CiKaJ1dYKR345soe4Qk0CMRCjpIqD6Jy/dVpW3OrR
	UnTRBj/ksY1w99cz6yGtFNzhkrmNRzEvPTes18o=
X-Google-Smtp-Source: AA6agR6tBH2ze27khO3r+P9xMCxnNoSOownhMa7PiL1g/uxTwkuQdKe0PvjhhZXpYG9p6SjhpOaYzsop3/ooU/W45b4=
X-Received: by 2002:a25:9b05:0:b0:696:4bce:822c with SMTP id
 y5-20020a259b05000000b006964bce822cmr11946710ybn.464.1661860664104; Tue, 30
 Aug 2022 04:57:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PupWnTfTXCfZ5ENm5ixSQbgqh+SgRpA4-7hsrXLvA5thQ@mail.gmail.com>
 <CALooG3_c9Pfr1vRG3zohhNwdFYZFxE2UC2eaej58-+3M-Tyi+A@mail.gmail.com>
 <CAA=S3Put=+CqGSkY64jx+FQno_cJObgX9EPVKmLQasO==+k9mw@mail.gmail.com>
 <CALooG38aXimqfZD6EBNEcxPOngf1siSqj+XGRT6fQsij3RY35A@mail.gmail.com> <CAL7q81v=j9fXjL-HKn-1gCyKNWtOhVheK3XSq4gXrD5S32nSwQ@mail.gmail.com>
In-Reply-To: <CAL7q81v=j9fXjL-HKn-1gCyKNWtOhVheK3XSq4gXrD5S32nSwQ@mail.gmail.com>
From: sp <stackprogramer@gmail.com>
Date: Tue, 30 Aug 2022 16:27:31 +0430
Message-ID: <CAA=S3Ps8Z_KRvqXbd5pEtypjRs397R9O4DxOMAEWg9A2ck9zJA@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Message-ID-Hash: AS4RXWEKDWBUIY2A4ZZ3JMN536T7WCKD
X-Message-ID-Hash: AS4RXWEKDWBUIY2A4ZZ3JMN536T7WCKD
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?B?WWFzaXIgw5Z6w6dhbMSxaw==?= <simultaneous11@gmail.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0x2cd7049b, 0xffff
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AS4RXWEKDWBUIY2A4ZZ3JMN536T7WCKD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5109041118905063810=="

--===============5109041118905063810==
Content-Type: multipart/alternative; boundary="0000000000008cdc1605e77416c2"

--0000000000008cdc1605e77416c2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks very much.  Jonathon and Yair. my problem is solved.


On Tue, Aug 30, 2022 at 5:38 AM Jonathon Pendlum <jonathon.pendlum@ettus.co=
m>
wrote:

> Hello,
>
> I suggest using LD_PRELOAD instead of UHD_MODULE_PATH, as UHD_MODULE_PATH
> will load all .so files in the directory.
>
> Jonathon
>
> On Mon, Aug 29, 2022 at 8:27 AM Yasir =C3=96z=C3=A7al=C4=B1k <simultaneou=
s11@gmail.com>
> wrote:
>
>> If so, there must be a .so file somewhere for lib. If you used
>> rfnoc-example, it would be under build/lib folder. You must export its p=
ath
>> in order to not get that warning (btw it is not an error, it is warning.=
).
>> The reason for warning is it cannot find your custom block while calling
>> uhd_usrp_probe. If you export your .so file's path, you can get rid of
>> that.
>> Example for export : "export
>> UHD_MODULE_PATH=3D<path_to_so_file>/librfnoc-example.so" (Since you did =
not
>> use rfnoc-example, name of the file should be different)
>>  If you call this in terminal before uhd_usrp_probe, then you should not
>> see that warning.
>>
>> Yasir
>>
>> sp <stackprogramer@gmail.com>, 29 A=C4=9Fu 2022 Pzt, 15:03 tarihinde =C5=
=9Funu
>> yazd=C4=B1:
>>
>>> Thanks very much, I created a bitstream for a custom rfnoc block, I
>>> don't use an RFNOC example....
>>>
>>> On Mon, Aug 29, 2022 at 1:26 PM Yasir =C3=96z=C3=A7al=C4=B1k <simultane=
ous11@gmail.com>
>>> wrote:
>>>
>>>> Hi sp,
>>>> can you give the details about how you generated bitstream with RFNoC
>>>> block. Did you use rfnoc-example, also did you generate bitstream with
>>>> default codes or did you add your own block into RFNoC?
>>>>
>>>> sp <stackprogramer@gmail.com>, 29 A=C4=9Fu 2022 Pzt, 10:14 tarihinde =
=C5=9Funu
>>>> yazd=C4=B1:
>>>>
>>>>> When I built FPGA for RFNOC block I faced with strange error...I
>>>>> check the FPGA source and RFNOC CPP source every id is ok but my code
>>>>> doesn't work correctly...
>>>>> ????
>>>>> Can any help me?
>>>>> uhd_usrp_probe
>>>>> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
>>>>> UHD_4.2.0.0-0-unknown
>>>>> [INFO] [X300] X300 initialization sequence...
>>>>> [INFO] [X300] Maximum frame size: 1472 bytes.
>>>>> [INFO] [X300] Radio 1x clock: 200 MHz
>>>>> [WARNING] [UDP] The recv buffer could not be resized sufficiently.
>>>>> Target sock buff size: 2453333 bytes.
>>>>> Actual sock buff size: 212992 bytes.
>>>>> See the transport application notes on buffer resizing.
>>>>> Please run: sudo sysctl -w net.core.rmem_max=3D2453333
>>>>> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>>>>> Target sock buff size: 2453333 bytes.
>>>>> Actual sock buff size: 212992 bytes.
>>>>> See the transport application notes on buffer resizing.
>>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2453333
>>>>> [WARNING] [UDP] The current recv_buff_size of 212992 is less than the
>>>>> minimum recommended size of 816000 and may result in dropped packets =
on
>>>>> some NICs
>>>>> [WARNING] [UDP] The current send_buff_size of 212992 is less than the
>>>>> minimum recommended size of 307200 and may result in dropped packets =
on
>>>>> some NICs
>>>>> [WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID
>>>>> 0x2cd7049b, 0xffff
>>>>> [INFO] [0/Block#0] Setting default MTU forward policy.
>>>>> [WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID
>>>>> 0xf0c66ff1, 0xffff
>>>>> [INFO] [0/Block#1] Setting default MTU forward policy.
>>>>> _______________________________________________
>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>
>>>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000008cdc1605e77416c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks very much.=C2=A0 Jonathon and Yair. my problem is s=
olved. <br><div class=3D"gmail-gs"><div class=3D"gmail-gE gmail-iv gmail-gt=
"><table class=3D"gmail-cf gmail-gJ" cellpadding=3D"0"><tbody><tr class=3D"=
gmail-acZ"><td class=3D"gmail-gF gmail-gK"><table class=3D"gmail-cf gmail-i=
x" cellpadding=3D"0"><tbody><tr><td class=3D"gmail-c2"><div class=3D"gmail-=
gs"><div class=3D"gmail-gE gmail-iv gmail-gt"><table class=3D"gmail-cf gmai=
l-gJ" cellpadding=3D"0"><tbody><tr class=3D"gmail-acZ"><td class=3D"gmail-g=
F gmail-gK"><table class=3D"gmail-cf gmail-ix" cellpadding=3D"0"><tbody><tr=
><td class=3D"gmail-c2"><br></td></tr></tbody></table></td></tr></tbody></t=
able></div></div><h3 class=3D"gmail-iw"></h3></td></tr></tbody></table></td=
></tr></tbody></table></div></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 30, 2022 at 5:38 AM Jonathon =
Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com">jonathon.pendlum@=
ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Hello,<div><br></div><div>I suggest using LD_PR=
ELOAD instead of UHD_MODULE_PATH, as UHD_MODULE_PATH will load all .so file=
s in the directory.</div><div><br></div><div>Jonathon</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 29, =
2022 at 8:27 AM Yasir =C3=96z=C3=A7al=C4=B1k &lt;<a href=3D"mailto:simultan=
eous11@gmail.com" target=3D"_blank">simultaneous11@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
">If so, there must be a .so file somewhere for lib. If you used rfnoc-exam=
ple, it would be under build/lib folder. You must export its path in order =
to not get that warning (btw it is not an error, it is warning.). The reaso=
n for warning is it cannot find your custom block while calling uhd_usrp_pr=
obe. If you export your .so file&#39;s path, you can get rid of that.=C2=A0=
<div>Example for export : &quot;export UHD_MODULE_PATH=3D&lt;path_to_so_fil=
e&gt;/librfnoc-example.so&quot; (Since you did not use rfnoc-example, name =
of the file should be different)</div><div>=C2=A0If you call this in termin=
al before uhd_usrp_probe, then you should not see that warning.</div><div><=
br></div><div>Yasir</div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">sp &lt;<a href=3D"mailto:stackprogramer@gmail.com"=
 target=3D"_blank">stackprogramer@gmail.com</a>&gt;, 29 A=C4=9Fu 2022 Pzt, =
15:03 tarihinde =C5=9Funu yazd=C4=B1:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr">Thanks very much, I created a bitstr=
eam for a custom rfnoc block, I don&#39;t use an RFNOC example....<br></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mo=
n, Aug 29, 2022 at 1:26 PM Yasir =C3=96z=C3=A7al=C4=B1k &lt;<a href=3D"mail=
to:simultaneous11@gmail.com" target=3D"_blank">simultaneous11@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr">Hi sp,<div>can you give the details=C2=A0about how you generat=
ed bitstream=C2=A0with RFNoC block.=C2=A0Did you use rfnoc-example, also di=
d you generate bitstream with default=C2=A0codes or did you add your own bl=
ock into RFNoC?</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">sp &lt;<a href=3D"mailto:stackprogramer@gmail.com" tar=
get=3D"_blank">stackprogramer@gmail.com</a>&gt;, 29 A=C4=9Fu 2022 Pzt, 10:1=
4 tarihinde =C5=9Funu yazd=C4=B1:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr">When I built FPGA for RFNOC block I face=
d with strange error...I check=C2=A0the FPGA source and RFNOC CPP source ev=
ery id is ok but my code doesn&#39;t work correctly...<div>????</div><div>C=
an any help me?<div>uhd_usrp_probe<br>[INFO] [UHD] linux; GNU C++ version 9=
.4.0; Boost_107100; UHD_4.2.0.0-0-unknown<br>[INFO] [X300] X300 initializat=
ion sequence...<br>[INFO] [X300] Maximum frame size: 1472 bytes.<br>[INFO] =
[X300] Radio 1x clock: 200 MHz<br>[WARNING] [UDP] The recv buffer could not=
 be resized sufficiently.<br>Target sock buff size: 2453333 bytes.<br>Actua=
l sock buff size: 212992 bytes.<br>See the transport application notes on b=
uffer resizing.<br>Please run: sudo sysctl -w net.core.rmem_max=3D2453333<b=
r>[WARNING] [UDP] The send buffer could not be resized sufficiently.<br>Tar=
get sock buff size: 2453333 bytes.<br>Actual sock buff size: 212992 bytes.<=
br>See the transport application notes on buffer resizing.<br>Please run: s=
udo sysctl -w net.core.wmem_max=3D2453333<br>[WARNING] [UDP] The current re=
cv_buff_size of 212992 is less than the minimum recommended size of 816000 =
and may result in dropped packets on some NICs<br>[WARNING] [UDP] The curre=
nt send_buff_size of 212992 is less than the minimum recommended size of 30=
7200 and may result in dropped packets on some NICs<br>[WARNING] [RFNOC::BL=
OCK_FACTORY] Could not find block with Noc-ID 0x2cd7049b, 0xffff<br>[INFO] =
[0/Block#0] Setting default MTU forward policy.<br>[WARNING] [RFNOC::BLOCK_=
FACTORY] Could not find block with Noc-ID 0xf0c66ff1, 0xffff<br>[INFO] [0/B=
lock#1] Setting default MTU forward policy.<br></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000008cdc1605e77416c2--

--===============5109041118905063810==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5109041118905063810==--
