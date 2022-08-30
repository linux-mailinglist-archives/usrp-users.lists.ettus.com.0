Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CFD5A58D3
	for <lists+usrp-users@lfdr.de>; Tue, 30 Aug 2022 03:10:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A4D9C387DB2
	for <lists+usrp-users@lfdr.de>; Mon, 29 Aug 2022 21:10:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1661821800; bh=tdhaug962RI50keBP0/yLr1lcmPY1JMlkYfUVJf1vuc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ZcMDcg6tGSjapyX1AEjWeAnqP8c34PJ0XdrRimEGLBoDQggnOpIrswrx2HLlZGSP2
	 G40ct9W++PizV7yhrI7/Kf/wfGJ7okxC1N72lpf/vDbfIvcsT1jyublk5q7btVueRB
	 5dYxq5katH3bL0uaX1tFqA7js6QPwiXZm4x3Yw6nHMd4kD7voVOP1mGWU2QuJV5qpW
	 cHDTyDlyYK82t7tv/hgjaCepVqXox78Ox8M/5LV0GNXgBiBLKJRNvegZjrcY19X5Fb
	 IHo4jvKU8zHi4pNNYceV6PUOlL1ztm0S8ra6H3WanYUjXOdW4QE2E+FJAcIH5PrrU9
	 QijGYPgLtrxWA==
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 67090387CC0
	for <usrp-users@lists.ettus.com>; Mon, 29 Aug 2022 21:08:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="wQY8pduc";
	dkim-atps=neutral
Received: by mail-vs1-f49.google.com with SMTP id k2so10024898vsk.8
        for <usrp-users@lists.ettus.com>; Mon, 29 Aug 2022 18:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=/yr61VVBBwlzqfE6X9mJTD4PUUhKJs9tEwNqEoRDkb4=;
        b=wQY8pduc1geL2UBoNp0Yo56vxaHobjoqj76auABTX2tI9gKphlnNH2PtWxh44lELdz
         xiwJ87v5fynkGw45a3QxKQ/fF8KkmFmmRrqxGi91qdyBHoUaXpwhNGih2j7Qwj8OsPUO
         EoKSkdzubWze7MiuKFY6R8yBqFKiCqJ02NFHQNa9NU3rpDDBA/isO+9u3m6gq2w6hElz
         XuyBdnOZZeRALqhyt0EeYfCp8gh5BzZrwcx77OkMhBtJ9hFAAxgmvKfgYxMPSk7M50Za
         LZp+YMyUAweg7u34Cm3kyHu/zs2x6wPUuMHKWQqQEsxz1DjWpCCSPiJtD5hXgO3Rv0ih
         KJqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=/yr61VVBBwlzqfE6X9mJTD4PUUhKJs9tEwNqEoRDkb4=;
        b=6DHNq1eWoGwxbb/8YyRNr9OswsD+mMZymPINFIw3XhtNDlUqw9dtJY+0/KRLx2gEJn
         UUkANfiSd8J9nPs4qClz8wNEmvz4z+3oAifv0JtyuS8yHNmHOt8aaUMwdSfZdYXUhkja
         HrF9llsEE0mABBtfFLHa8qe5g7n9pr2RhZUohXYxUslNFpQOwAnHE/5I4/ktIpRpahVU
         sB4LCc1It30icoceJAzx7nYWm5b9aMEs7+oQkQp8r0uhDxw9wcZ+bbyscBFiCRaJfOw9
         hq5inJkMuiQnvW2BeWlDwL7hwUF5b95emRwKa6wOtdZ00xp9aEYT8e8zI2vt7TNbqQq6
         1+SA==
X-Gm-Message-State: ACgBeo3dsNaw7orN5mXvZ/GkViQARuByojRMxanSyWNvgUbiH5hfLn13
	IZ38aMNyNGJaIfg/tq+XA+jMcItXcIXmLbI0jsJa6FBv
X-Google-Smtp-Source: AA6agR6QLllftRKQWm/UVOfTsHVDCnHsM2z/dBI9/Mjnv/kZ0mz/NmGckt4W5jp9GWdQChLY1xKAp6aYjqR2gFZkRxI=
X-Received: by 2002:a67:eb55:0:b0:390:9aea:bfad with SMTP id
 x21-20020a67eb55000000b003909aeabfadmr3737849vso.49.1661821717840; Mon, 29
 Aug 2022 18:08:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PupWnTfTXCfZ5ENm5ixSQbgqh+SgRpA4-7hsrXLvA5thQ@mail.gmail.com>
 <CALooG3_c9Pfr1vRG3zohhNwdFYZFxE2UC2eaej58-+3M-Tyi+A@mail.gmail.com>
 <CAA=S3Put=+CqGSkY64jx+FQno_cJObgX9EPVKmLQasO==+k9mw@mail.gmail.com> <CALooG38aXimqfZD6EBNEcxPOngf1siSqj+XGRT6fQsij3RY35A@mail.gmail.com>
In-Reply-To: <CALooG38aXimqfZD6EBNEcxPOngf1siSqj+XGRT6fQsij3RY35A@mail.gmail.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Mon, 29 Aug 2022 21:08:01 -0400
Message-ID: <CAL7q81v=j9fXjL-HKn-1gCyKNWtOhVheK3XSq4gXrD5S32nSwQ@mail.gmail.com>
To: =?UTF-8?B?WWFzaXIgw5Z6w6dhbMSxaw==?= <simultaneous11@gmail.com>
Message-ID-Hash: VEJGLH3LBBN4H6AS3LGV4NBLGRCG2ATC
X-Message-ID-Hash: VEJGLH3LBBN4H6AS3LGV4NBLGRCG2ATC
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: sp <stackprogramer@gmail.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0x2cd7049b, 0xffff
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VEJGLH3LBBN4H6AS3LGV4NBLGRCG2ATC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2840036697930257113=="

--===============2840036697930257113==
Content-Type: multipart/alternative; boundary="0000000000002c1c3605e76b05eb"

--0000000000002c1c3605e76b05eb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I suggest using LD_PRELOAD instead of UHD_MODULE_PATH, as UHD_MODULE_PATH
will load all .so files in the directory.

Jonathon

On Mon, Aug 29, 2022 at 8:27 AM Yasir =C3=96z=C3=A7al=C4=B1k <simultaneous1=
1@gmail.com>
wrote:

> If so, there must be a .so file somewhere for lib. If you used
> rfnoc-example, it would be under build/lib folder. You must export its pa=
th
> in order to not get that warning (btw it is not an error, it is warning.)=
.
> The reason for warning is it cannot find your custom block while calling
> uhd_usrp_probe. If you export your .so file's path, you can get rid of
> that.
> Example for export : "export
> UHD_MODULE_PATH=3D<path_to_so_file>/librfnoc-example.so" (Since you did n=
ot
> use rfnoc-example, name of the file should be different)
>  If you call this in terminal before uhd_usrp_probe, then you should not
> see that warning.
>
> Yasir
>
> sp <stackprogramer@gmail.com>, 29 A=C4=9Fu 2022 Pzt, 15:03 tarihinde =C5=
=9Funu
> yazd=C4=B1:
>
>> Thanks very much, I created a bitstream for a custom rfnoc block, I don'=
t
>> use an RFNOC example....
>>
>> On Mon, Aug 29, 2022 at 1:26 PM Yasir =C3=96z=C3=A7al=C4=B1k <simultaneo=
us11@gmail.com>
>> wrote:
>>
>>> Hi sp,
>>> can you give the details about how you generated bitstream with RFNoC
>>> block. Did you use rfnoc-example, also did you generate bitstream with
>>> default codes or did you add your own block into RFNoC?
>>>
>>> sp <stackprogramer@gmail.com>, 29 A=C4=9Fu 2022 Pzt, 10:14 tarihinde =
=C5=9Funu
>>> yazd=C4=B1:
>>>
>>>> When I built FPGA for RFNOC block I faced with strange error...I
>>>> check the FPGA source and RFNOC CPP source every id is ok but my code
>>>> doesn't work correctly...
>>>> ????
>>>> Can any help me?
>>>> uhd_usrp_probe
>>>> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
>>>> UHD_4.2.0.0-0-unknown
>>>> [INFO] [X300] X300 initialization sequence...
>>>> [INFO] [X300] Maximum frame size: 1472 bytes.
>>>> [INFO] [X300] Radio 1x clock: 200 MHz
>>>> [WARNING] [UDP] The recv buffer could not be resized sufficiently.
>>>> Target sock buff size: 2453333 bytes.
>>>> Actual sock buff size: 212992 bytes.
>>>> See the transport application notes on buffer resizing.
>>>> Please run: sudo sysctl -w net.core.rmem_max=3D2453333
>>>> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>>>> Target sock buff size: 2453333 bytes.
>>>> Actual sock buff size: 212992 bytes.
>>>> See the transport application notes on buffer resizing.
>>>> Please run: sudo sysctl -w net.core.wmem_max=3D2453333
>>>> [WARNING] [UDP] The current recv_buff_size of 212992 is less than the
>>>> minimum recommended size of 816000 and may result in dropped packets o=
n
>>>> some NICs
>>>> [WARNING] [UDP] The current send_buff_size of 212992 is less than the
>>>> minimum recommended size of 307200 and may result in dropped packets o=
n
>>>> some NICs
>>>> [WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID
>>>> 0x2cd7049b, 0xffff
>>>> [INFO] [0/Block#0] Setting default MTU forward policy.
>>>> [WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID
>>>> 0xf0c66ff1, 0xffff
>>>> [INFO] [0/Block#1] Setting default MTU forward policy.
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000002c1c3605e76b05eb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I suggest using LD_PRELOAD inste=
ad of UHD_MODULE_PATH, as UHD_MODULE_PATH will load all .so files in the di=
rectory.</div><div><br></div><div>Jonathon</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 29, 2022 at 8:2=
7 AM Yasir =C3=96z=C3=A7al=C4=B1k &lt;<a href=3D"mailto:simultaneous11@gmai=
l.com">simultaneous11@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">If so, there must be a .s=
o file somewhere for lib. If you used rfnoc-example, it would be under buil=
d/lib folder. You must export its path in order to not get that warning (bt=
w it is not an error, it is warning.). The reason for warning is it cannot =
find your custom block while calling uhd_usrp_probe. If you export your .so=
 file&#39;s path, you can get rid of that.=C2=A0<div>Example for export : &=
quot;export UHD_MODULE_PATH=3D&lt;path_to_so_file&gt;/librfnoc-example.so&q=
uot; (Since you did not use rfnoc-example, name of the file should be diffe=
rent)</div><div>=C2=A0If you call this in terminal before uhd_usrp_probe, t=
hen you should not see that warning.</div><div><br></div><div>Yasir</div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">sp=
 &lt;<a href=3D"mailto:stackprogramer@gmail.com" target=3D"_blank">stackpro=
gramer@gmail.com</a>&gt;, 29 A=C4=9Fu 2022 Pzt, 15:03 tarihinde =C5=9Funu y=
azd=C4=B1:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr">Thanks very much, I created a bitstream for a custom rfnoc bloc=
k, I don&#39;t use an RFNOC example....<br></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 29, 2022 at 1:26 PM =
Yasir =C3=96z=C3=A7al=C4=B1k &lt;<a href=3D"mailto:simultaneous11@gmail.com=
" target=3D"_blank">simultaneous11@gmail.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi sp,<div>can=
 you give the details=C2=A0about how you generated bitstream=C2=A0with RFNo=
C block.=C2=A0Did you use rfnoc-example, also did you generate bitstream wi=
th default=C2=A0codes or did you add your own block into RFNoC?</div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">sp &lt=
;<a href=3D"mailto:stackprogramer@gmail.com" target=3D"_blank">stackprogram=
er@gmail.com</a>&gt;, 29 A=C4=9Fu 2022 Pzt, 10:14 tarihinde =C5=9Funu yazd=
=C4=B1:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">When I built FPGA for RFNOC block I faced with strange error...I c=
heck=C2=A0the FPGA source and RFNOC CPP source every id is ok but my code d=
oesn&#39;t work correctly...<div>????</div><div>Can any help me?<div>uhd_us=
rp_probe<br>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.=
2.0.0-0-unknown<br>[INFO] [X300] X300 initialization sequence...<br>[INFO] =
[X300] Maximum frame size: 1472 bytes.<br>[INFO] [X300] Radio 1x clock: 200=
 MHz<br>[WARNING] [UDP] The recv buffer could not be resized sufficiently.<=
br>Target sock buff size: 2453333 bytes.<br>Actual sock buff size: 212992 b=
ytes.<br>See the transport application notes on buffer resizing.<br>Please =
run: sudo sysctl -w net.core.rmem_max=3D2453333<br>[WARNING] [UDP] The send=
 buffer could not be resized sufficiently.<br>Target sock buff size: 245333=
3 bytes.<br>Actual sock buff size: 212992 bytes.<br>See the transport appli=
cation notes on buffer resizing.<br>Please run: sudo sysctl -w net.core.wme=
m_max=3D2453333<br>[WARNING] [UDP] The current recv_buff_size of 212992 is =
less than the minimum recommended size of 816000 and may result in dropped =
packets on some NICs<br>[WARNING] [UDP] The current send_buff_size of 21299=
2 is less than the minimum recommended size of 307200 and may result in dro=
pped packets on some NICs<br>[WARNING] [RFNOC::BLOCK_FACTORY] Could not fin=
d block with Noc-ID 0x2cd7049b, 0xffff<br>[INFO] [0/Block#0] Setting defaul=
t MTU forward policy.<br>[WARNING] [RFNOC::BLOCK_FACTORY] Could not find bl=
ock with Noc-ID 0xf0c66ff1, 0xffff<br>[INFO] [0/Block#1] Setting default MT=
U forward policy.<br></div></div></div>
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

--0000000000002c1c3605e76b05eb--

--===============2840036697930257113==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2840036697930257113==--
