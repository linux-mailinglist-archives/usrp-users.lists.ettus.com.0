Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 303FB14C390
	for <lists+usrp-users@lfdr.de>; Wed, 29 Jan 2020 00:34:51 +0100 (CET)
Received: from [::1] (port=36926 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iwaNd-0005SZ-GK; Tue, 28 Jan 2020 18:34:49 -0500
Received: from mail-qt1-f171.google.com ([209.85.160.171]:46899)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iwaNZ-0005JN-If
 for usrp-users@lists.ettus.com; Tue, 28 Jan 2020 18:34:45 -0500
Received: by mail-qt1-f171.google.com with SMTP id e25so11738543qtr.13
 for <usrp-users@lists.ettus.com>; Tue, 28 Jan 2020 15:34:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=lVD5/N1aXLqk4CjtZq7/Lsl4YVDUo7U2lcqJcDgsjvQ=;
 b=Lu+UXIDxPfVrp70gTOk3HHvCsTZI1LDmIJimUfWIiuiSChAYix/Tnu3iU5+E9gbsUS
 uNaObTvsjjMa98bT9KyE4fq2F960FIFa7Okx8VGQY/uCU6+jUpOfzhthxgkQZfyD3nM2
 PCJCHxkE3nPIROLEZaGyZ7hP6E/wz0jMSf1mooZPu88mraBovlmWNMKL4pcRmdG9+ti+
 O5aYl+76DUzJwuNz5FbhS7QX1CQUeDobPKJl8XUB1lfoon0N6LYcnnczMVe04scmbUWu
 JFWCVUAnjcMSWmwdrKvPCnCs/dEqqqZz1jpGnfjt5N/Kg1a3JIbbmQPBoisLsTNjQ2Pp
 1aLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=lVD5/N1aXLqk4CjtZq7/Lsl4YVDUo7U2lcqJcDgsjvQ=;
 b=RetfOgeTvGEYUDUvXl81WG/jhD88jfKLWC/UISAsMmAP/xCDZxiKw/YHZG2S97yXS+
 aPTomxoXsH5AoBbK68eVplkUVIgV8mwi14z6ZKCuRbL8U+F/RW4P/BxOqr/rpMY6ee5u
 apQB/Pk10Wo9vcR+dq0x2RC850VNP32kkX3RC88wnnIeGkuXSvG9W97j5QyxH1K+pffN
 0nMH8ViEGofs/3+XdKl2w2mlroLXb9nymlZYpUE6j7HmHT0AhfXXtQHjDtZSMPJmnC4/
 w6MNDyf+V+Wp0LAqfUAZUNT/uOO6BIuICme3RW2mN/HEbGaJ3BhR/zIAZMb3b8zqXF1I
 Ma7Q==
X-Gm-Message-State: APjAAAVpzJtfEo9wMf4t270I1YRpCFNGjbpLTJZqJSq0Vg7lzC1mt6sc
 165Aw5P+mpCEv/cUbphlt6ZLHyAQ
X-Google-Smtp-Source: APXvYqwKEnWKz+KzfcV3THLzRoPgiC+EESTrTz08vn/sgC4C5qmBGpHbIjpxoeLDxA/OB7z1/gDi3g==
X-Received: by 2002:ac8:7b24:: with SMTP id l4mr23980167qtu.3.1580254444542;
 Tue, 28 Jan 2020 15:34:04 -0800 (PST)
Received: from [192.168.0.198] ([24.146.32.18])
 by smtp.gmail.com with ESMTPSA id w21sm101300qth.17.2020.01.28.15.34.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Jan 2020 15:34:04 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Tue, 28 Jan 2020 18:34:02 -0500
Message-Id: <04D8FAC9-95EB-4023-98A3-B05998A1193E@gmail.com>
References: <2CC2C4B3-61AB-453B-8DC7-DAD50E259F11@gmail.com>
In-Reply-To: <2CC2C4B3-61AB-453B-8DC7-DAD50E259F11@gmail.com>
To: Austin Adam <austinadam42@gmail.com>
X-Mailer: iPhone Mail (17C54)
Subject: Re: [USRP-users] USRP N310 Performance Issues
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1482713630956882825=="
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


--===============1482713630956882825==
Content-Type: multipart/alternative; boundary=Apple-Mail-491DC470-A005-4E6C-8049-F2819A8CBFDE
Content-Transfer-Encoding: 7bit


--Apple-Mail-491DC470-A005-4E6C-8049-F2819A8CBFDE
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Let=E2=80=99s do some quick math, shall we?

5msps with 16-bit complex =3D=3D 160Mbit/second
1.25msps with 16-bit complex samples =3D=3D an additional 40mbit-second

Unless you have super reliable 1Gig wireless infrastructure, this just isn=E2=
=80=99t going to work. =20

Sent from my iPhone

> On Jan 28, 2020, at 6:23 PM, Austin Adam via USRP-users <usrp-users@lists.=
ettus.com> wrote:
>=20
> =EF=BB=BFHey Nate,
> Thanks for the quick response as always! I tried editing those files in th=
e past, but I remember having issues because they were locked or I wasn=E2=80=
=99t able to actually save any changes that I made. Is there a way to do it d=
irectly via the jtag and using the screen command to speak with the N310?
>=20
> Also, unfortunately for the current project I am working on, we really nee=
d to have a wireless connection to the USRPs via the router. I am sure there=
 is some way to make it work because we can still get data that looks good, i=
t just starts to get clunky after a few seconds of streaming.
>=20
>=20
>>> On Jan 28, 2020, at 3:07 PM, Nate Temple <nate.temple@ettus.com> wrote:
>>>=20
>> =EF=BB=BF
>> Hi Austin,
>>=20
>> The MTUs on your host and N310 must match. You should modify the systemd c=
onfiguration on the N310 are restart the whole device or restart systemd-net=
workd=20
>>=20
>> https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Updat=
ing_the_Network_Configurations
>>=20
>> It is not recommended to stream over a wireless connection as the additio=
nal delay will cause flow control errors. It is also generally recommended t=
o not have a switch in line as some switches can reorder packets. You should=
 directly connect to the USRP for the streaming interfaces. On the N3xx, it'=
s fine to access the RJ45 management port via a switch.=20
>>=20
>> Regards,
>> Nate Temple
>>=20
>>=20
>>=20
>>> On Tue, Jan 28, 2020 at 2:52 PM Austin Adam via USRP-users <usrp-users@l=
ists.ettus.com> wrote:
>>> Hi everyone,
>>> I have a very basic GNU script with just a USRP block and a time sink th=
at when I run, there are tons of streaming errors with the tx and rx. In GNU=
, the console is being filled with 'D's and the console for the N210 is gett=
ing filled with 'U's and 'S's.
>>>=20
>>> My setup is just a USRP N210 connected to the RX LO ports of the N310. I=
 am sending the following command to the N210:
>>>=20
>>> "sudo '/home/austin/workarea-uhd/uhd/host/build/examples/tx_waveforms' -=
-args "addr=3D192.168.10.15,type=3Dusrp2" --freq 3.90000e9 --ant "TX/RX" --s=
ubdev "A:0" --channels 0 --rate 1.25e6 --gain 29.5"
>>>=20
>>> The USRPs are connected to a router via cat 5e cables, and then my lapto=
p is connected to the router via wifi. Something I noticed is that when I co=
nnect to the router via ethernet to my laptop, I don't get any of the perfor=
mance issues. It seems to only happen over the wifi.
>>>=20
>>> When I run ifconfig on my laptop, my MTU is set to 1500, and on the USRP=
 N310 the MTU on the sfp0 port that we are using is 8000. I wasn't able to c=
hange the MTU on the N310 because it said the device was in use, but those v=
alues seem to work fine over ethernet so I didn't look too much into it.
>>>=20
>>> The sample rate on my GNU script is set to 5M for now, and lowering it d=
oes seem to reduce the amount of 'D's that I get, but also negatively affect=
s our data.=20
>>>=20
>>> Lastly, here is some output from the N210 that shows the error:
>>>=20
>>> austin@Austin-Blade:~$ sudo '/home/austin/workarea-uhd/uhd/host/build/ex=
amples/tx_waveforms' --args "addr=3D192.168.10.15,type=3Dusrp2" --freq 3.900=
00e9 --ant "TX/RX" --subdev "A:0" --channels 0 --rate 1.25e6 --gain 29.5
>>>=20
>>> Creating the usrp device with: addr=3D192.168.10.15,type=3Dusrp2...
>>> [INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700; UHD_3.14.0.HEAD=
-0-g6875d061
>>> [INFO] [USRP2] Opening a USRP2/N-Series device...
>>> [INFO] [USRP2] Current recv frame size: 1472 bytes
>>> [INFO] [USRP2] Current send frame size: 1472 bytes
>>> Using Device: Single USRP:
>>>   Device: USRP2 / N-Series Device
>>>   Mboard 0: N210r4
>>>   RX Channel: 0
>>>     RX DSP: 0
>>>     RX Dboard: A
>>>     RX Subdev: SBXv3 RX
>>>   TX Channel: 0
>>>     TX DSP: 0
>>>     TX Dboard: A
>>>     TX Subdev: SBXv3 TX
>>>=20
>>> Setting TX Rate: 1.250000 Msps...
>>> Actual TX Rate: 1.250000 Msps...
>>>=20
>>> Setting TX Freq: 3900.000000 MHz...
>>> Setting TX LO Offset: 0.000000 MHz...
>>> Actual TX Freq: 3900.000000 MHz...
>>>=20
>>> Setting TX Gain: 29.500000 dB...
>>> Actual TX Gain: 29.500000 dB...
>>>=20
>>> Setting device timestamp to 0...
>>> Checking TX: LO: locked ...
>>> Press Ctrl + C to stop streaming...
>>> UUUSUUUU[ERROR] [USRP2] Control packet attempt 0, sequence number 470:
>>> RuntimeError: no control response, possible packet loss
>>> UUUSUUUUSUUUUUU^C     =20
>>> Done!
>>>=20
>>> I appreciate any help that anyone has to offer!
>>>=20
>>> Best,
>>> Austin
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-491DC470-A005-4E6C-8049-F2819A8CBFDE
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Let=E2=80=99s do some quick math, shall we?=
<div><br></div><div>5msps with 16-bit complex =3D=3D 160Mbit/second</div><di=
v>1.25msps with 16-bit complex samples =3D=3D an additional 40mbit-second</d=
iv><div><br></div><div>Unless you have super reliable 1Gig wireless infrastr=
ucture, this just isn=E2=80=99t going to work. &nbsp;<br><br><div dir=3D"ltr=
">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On=
 Jan 28, 2020, at 6:23 PM, Austin Adam via USRP-users &lt;usrp-users@lists.e=
ttus.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div=
 dir=3D"ltr">=EF=BB=BF<meta http-equiv=3D"content-type" content=3D"text/html=
; charset=3Dutf-8">Hey Nate,<div>Thanks for the quick response as always! I t=
ried editing those files in the past, but I remember having issues because t=
hey were locked or I wasn=E2=80=99t able to actually save any changes that I=
 made. Is there a way to do it directly via the jtag and using the screen co=
mmand to speak with the N310?</div><div><br></div><div>Also, unfortunately f=
or the current project I am working on, we really need to have a wireless co=
nnection to the USRPs via the router. I am sure there is some way to make it=
 work because we can still get data that looks good, it just starts to get c=
lunky after a few seconds of streaming.<br><div dir=3D"ltr"><br></div><div d=
ir=3D"ltr"><br><blockquote type=3D"cite">On Jan 28, 2020, at 3:07 PM, Nate T=
emple &lt;nate.temple@ettus.com&gt; wrote:<br><br></blockquote></div><blockq=
uote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div class=3D"=
gmail_default" style=3D"font-family:arial,helvetica,sans-serif">Hi Austin,<b=
r><br>The MTUs on your host and N310 must match. You should modify the syste=
md configuration on the N310 are restart the whole device or restart systemd=
-networkd <br><br><a href=3D"https://kb.ettus.com/USRP_N300/N310/N320/N321_G=
etting_Started_Guide#Updating_the_Network_Configurations">https://kb.ettus.c=
om/USRP_N300/N310/N320/N321_Getting_Started_Guide#Updating_the_Network_Confi=
gurations</a><br><br>It is not recommended to stream over a wireless connect=
ion as the additional delay will cause flow control errors. It is also gener=
ally recommended to not have a switch in line as some switches can reorder p=
ackets. You should directly connect to the USRP for the streaming interfaces=
. On the N3xx, it's fine to access the RJ45 management port via a switch. <b=
r><br>Regards,<br>Nate Temple<br><br><br></div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 28, 2020 at 2:52 P=
M Austin Adam via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr">Hi everyone,<div>I have a very b=
asic GNU script with just a USRP block and a time sink that when I run, ther=
e are tons of streaming errors with the tx and rx. In GNU, the console is be=
ing filled with 'D's and the console for the N210 is getting filled with 'U'=
s and 'S's.<br></div><div><br></div><div>My setup is just a USRP N210 connec=
ted to the RX LO ports of the N310. I am sending the following command to th=
e N210:</div><div><i><br></i></div><div><i>"sudo '/home/austin/workarea-uhd/=
uhd/host/build/examples/tx_waveforms' --args "addr=3D192.168.10.15,type=3Dus=
rp2" --freq 3.90000e9 --ant "TX/RX" --subdev "A:0" --channels 0 --rate 1.25e=
6 --gain 29.5"</i></div><div><i><br></i></div><div>The USRPs are connected t=
o a router via cat 5e cables, and then my laptop is connected&nbsp;to the ro=
uter via wifi. Something I noticed is that when I connect to the router via e=
thernet&nbsp;to my laptop, I don't get any of the performance issues. It see=
ms to only happen over the wifi.</div><div><br></div><div>When I run ifconfi=
g on my laptop, my MTU is set to 1500, and on the USRP N310 the MTU on the s=
fp0 port that we are using is 8000. I wasn't able to change the MTU on the N=
310 because it said the device was in use, but those values seem to work fin=
e over ethernet so I didn't look too much into it.</div><div><br></div><div>=
The sample rate on my GNU script is set to 5M for now, and lowering it does s=
eem to reduce the amount of 'D's that I get, but also negatively affects our=
 data.&nbsp;</div><div><br></div><div>Lastly, here is some output from the N=
210 that shows the error:</div><div><br></div><div><i>austin@Austin-Blade:~$=
 sudo '/home/</i>austin<i>/workarea-uhd/uhd/host/build/examples/tx_waveforms=
' --args "addr=3D192.168.10.15,type=3Dusrp2" --freq 3.90000e9 --ant "TX/RX" -=
-subdev "A:0" --channels 0 --rate 1.25e6 --gain 29.5<br><br>Creating the usr=
p device with: addr=3D192.168.10.15,type=3Dusrp2...<br>[INFO] [UHD] linux; G=
NU C++ version 8.3.0; Boost_106700; UHD_3.14.0.HEAD-0-g6875d061<br>[INFO] [U=
SRP2] Opening a USRP2/N-Series device...<br>[INFO] [USRP2] Current recv fram=
e size: 1472 bytes<br>[INFO] [USRP2] Current send frame size: 1472 bytes<br>=
Using Device: Single USRP:<br>&nbsp; Device: USRP2 / N-Series Device<br>&nbs=
p; Mboard 0: N210r4<br>&nbsp; RX Channel: 0<br>&nbsp; &nbsp; RX DSP: 0<br>&n=
bsp; &nbsp; RX Dboard: A<br>&nbsp; &nbsp; RX Subdev: SBXv3 RX<br>&nbsp; TX C=
hannel: 0<br>&nbsp; &nbsp; TX DSP: 0<br>&nbsp; &nbsp; TX Dboard: A<br>&nbsp;=
 &nbsp; TX Subdev: SBXv3 TX<br><br>Setting TX Rate: 1.250000 Msps...<br>Actu=
al TX Rate: 1.250000 Msps...<br><br>Setting TX Freq: 3900.000000 MHz...<br>S=
etting TX LO Offset: 0.000000 MHz...<br>Actual TX Freq: 3900.000000 MHz...<b=
r><br>Setting TX Gain: 29.500000 dB...<br>Actual TX Gain: 29.500000 dB...<br=
><br>Setting device timestamp to 0...<br>Checking TX: LO: locked ...<br>Pres=
s Ctrl + C to stop streaming...<br></i>UUUSUUUU[ERROR] [USRP2] Control packe=
t attempt 0, sequence number 470:<br>RuntimeError: no control response, poss=
ible packet loss<br>UUUSUUUUSUUUUUU^C<i>&nbsp; &nbsp; &nbsp;&nbsp;<br>Done!<=
/i><br></div><div><i><br></i></div><div>I appreciate any help that anyone ha=
s to offer!</div><div><br></div><div>Best,</div><div>Austin</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div><span>_____________________________________________=
__</span><br><span>USRP-users mailing list</span><br><span>USRP-users@lists.=
ettus.com</span><br><span>http://lists.ettus.com/mailman/listinfo/usrp-users=
_lists.ettus.com</span><br></div></blockquote></div></body></html>=

--Apple-Mail-491DC470-A005-4E6C-8049-F2819A8CBFDE--


--===============1482713630956882825==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1482713630956882825==--

