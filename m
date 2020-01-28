Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0ED14C382
	for <lists+usrp-users@lfdr.de>; Wed, 29 Jan 2020 00:23:16 +0100 (CET)
Received: from [::1] (port=35052 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iwaCO-0004v8-HL; Tue, 28 Jan 2020 18:23:12 -0500
Received: from mail-pf1-f172.google.com ([209.85.210.172]:46476)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <austinadam42@gmail.com>)
 id 1iwaCL-0004or-6Y
 for usrp-users@lists.ettus.com; Tue, 28 Jan 2020 18:23:09 -0500
Received: by mail-pf1-f172.google.com with SMTP id k29so4942613pfp.13
 for <usrp-users@lists.ettus.com>; Tue, 28 Jan 2020 15:22:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=Wg3CbQAvkt1AUYpL/XnYER98gQws4rYCH+Bl241vktY=;
 b=SeQ4h2chRxMqo1j9x/Iq47jaP7zpKrKdZA1Yd9PHI8roPUswJwbV4VG96+ipdBhsUi
 U30hn3SLjl2eOC8IiGq1QPdJINE273Kmby22nNL3wZrzhnypeSH4M/PtYSOLk04MktBl
 4qBhSqz+ZaXpoNaxEYSujRLzB+x4ktXN1H7ZKzDsMpwqtPFi1YFiYMVyzrKLGcBOF1Tj
 lHnh1vzUvTnkabPh4HPXbODZCA5GzQ//Fm1Z2KWNV/XLKmDh1rOkn9P0SkJDSMqySJ/X
 PPCpHnJlpt66d5suA8GnftdwMfAH9aD/twXYSIskUY0v4XIONRoKka4fS+S4khJhhmqW
 aaLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=Wg3CbQAvkt1AUYpL/XnYER98gQws4rYCH+Bl241vktY=;
 b=sEvGOX/rwYqS3SsCzT7DzyDaLdJLsy3nFJplFz1IK00UeLXambWX9gXdmhPwWZ3z6W
 PmpcroZZm0RtPhYlolbF2gUE7bkDW+ErsPK8yFBbBP6cI1TV3Alb1aXnOcbh7AaYhq7q
 tYtwvXUvfFAyId4RiujEU9OVzVqy257qKpg1b4kokQmlo8rps+GZaYKrVYocEPFpyK1x
 Dtc6ZpSrmBy2eCylR17GZoN+SMgJ2oYwp/7/S3urKo+rDUdRqJ52WprW1KrIXjHI0RlB
 9RHFbVZP4lPedvykcgnZTM4bGe27DjEnSK5SFKfw6J44qDYagW6biaSXHVIKRsp61oLZ
 rw+Q==
X-Gm-Message-State: APjAAAVA07/vQem4/EeYyMgs+Y6+xQ/hutF0c1XNMp4lMtg6T8OcLb8b
 ynyrjGxGIHFcjuqHBqyfr2o2+0S3
X-Google-Smtp-Source: APXvYqxHC+BSHQo/BTdGJ4JhW9DyeGg0jWogWQpTq4y8F7hB8FKE0NI+Ajns4XCLXjAo0KV8iwDl9A==
X-Received: by 2002:a63:cb47:: with SMTP id m7mr27562673pgi.309.1580253747959; 
 Tue, 28 Jan 2020 15:22:27 -0800 (PST)
Received: from ?IPv6:2600:1012:b023:fb9f:41dd:b799:8ce3:d52a?
 ([2600:1012:b023:fb9f:41dd:b799:8ce3:d52a])
 by smtp.gmail.com with ESMTPSA id g9sm115066pfm.150.2020.01.28.15.22.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Jan 2020 15:22:27 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Tue, 28 Jan 2020 15:22:25 -0800
Message-Id: <2CC2C4B3-61AB-453B-8DC7-DAD50E259F11@gmail.com>
References: <CAL263iy0PaLZ7h+XQw-J0HAKsyLKuAn_RUkbwccg=hJCxQ9C6g@mail.gmail.com>
In-Reply-To: <CAL263iy0PaLZ7h+XQw-J0HAKsyLKuAn_RUkbwccg=hJCxQ9C6g@mail.gmail.com>
To: Nate Temple <nate.temple@ettus.com>
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
From: Austin Adam via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Austin Adam <austinadam42@gmail.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8951610023444006626=="
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


--===============8951610023444006626==
Content-Type: multipart/alternative; boundary=Apple-Mail-C5F6B1B3-21F5-449B-A78D-6B01F074AA1F
Content-Transfer-Encoding: 7bit


--Apple-Mail-C5F6B1B3-21F5-449B-A78D-6B01F074AA1F
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hey Nate,
Thanks for the quick response as always! I tried editing those files in the p=
ast, but I remember having issues because they were locked or I wasn=E2=80=99=
t able to actually save any changes that I made. Is there a way to do it dir=
ectly via the jtag and using the screen command to speak with the N310?

Also, unfortunately for the current project I am working on, we really need t=
o have a wireless connection to the USRPs via the router. I am sure there is=
 some way to make it work because we can still get data that looks good, it j=
ust starts to get clunky after a few seconds of streaming.


> On Jan 28, 2020, at 3:07 PM, Nate Temple <nate.temple@ettus.com> wrote:
>=20
> =EF=BB=BF
> Hi Austin,
>=20
> The MTUs on your host and N310 must match. You should modify the systemd c=
onfiguration on the N310 are restart the whole device or restart systemd-net=
workd=20
>=20
> https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Updati=
ng_the_Network_Configurations
>=20
> It is not recommended to stream over a wireless connection as the addition=
al delay will cause flow control errors. It is also generally recommended to=
 not have a switch in line as some switches can reorder packets. You should d=
irectly connect to the USRP for the streaming interfaces. On the N3xx, it's f=
ine to access the RJ45 management port via a switch.=20
>=20
> Regards,
> Nate Temple
>=20
>=20
>=20
>> On Tue, Jan 28, 2020 at 2:52 PM Austin Adam via USRP-users <usrp-users@li=
sts.ettus.com> wrote:
>> Hi everyone,
>> I have a very basic GNU script with just a USRP block and a time sink tha=
t when I run, there are tons of streaming errors with the tx and rx. In GNU,=
 the console is being filled with 'D's and the console for the N210 is getti=
ng filled with 'U's and 'S's.
>>=20
>> My setup is just a USRP N210 connected to the RX LO ports of the N310. I a=
m sending the following command to the N210:
>>=20
>> "sudo '/home/austin/workarea-uhd/uhd/host/build/examples/tx_waveforms' --=
args "addr=3D192.168.10.15,type=3Dusrp2" --freq 3.90000e9 --ant "TX/RX" --su=
bdev "A:0" --channels 0 --rate 1.25e6 --gain 29.5"
>>=20
>> The USRPs are connected to a router via cat 5e cables, and then my laptop=
 is connected to the router via wifi. Something I noticed is that when I con=
nect to the router via ethernet to my laptop, I don't get any of the perform=
ance issues. It seems to only happen over the wifi.
>>=20
>> When I run ifconfig on my laptop, my MTU is set to 1500, and on the USRP N=
310 the MTU on the sfp0 port that we are using is 8000. I wasn't able to cha=
nge the MTU on the N310 because it said the device was in use, but those val=
ues seem to work fine over ethernet so I didn't look too much into it.
>>=20
>> The sample rate on my GNU script is set to 5M for now, and lowering it do=
es seem to reduce the amount of 'D's that I get, but also negatively affects=
 our data.=20
>>=20
>> Lastly, here is some output from the N210 that shows the error:
>>=20
>> austin@Austin-Blade:~$ sudo '/home/austin/workarea-uhd/uhd/host/build/exa=
mples/tx_waveforms' --args "addr=3D192.168.10.15,type=3Dusrp2" --freq 3.9000=
0e9 --ant "TX/RX" --subdev "A:0" --channels 0 --rate 1.25e6 --gain 29.5
>>=20
>> Creating the usrp device with: addr=3D192.168.10.15,type=3Dusrp2...
>> [INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700; UHD_3.14.0.HEAD-=
0-g6875d061
>> [INFO] [USRP2] Opening a USRP2/N-Series device...
>> [INFO] [USRP2] Current recv frame size: 1472 bytes
>> [INFO] [USRP2] Current send frame size: 1472 bytes
>> Using Device: Single USRP:
>>   Device: USRP2 / N-Series Device
>>   Mboard 0: N210r4
>>   RX Channel: 0
>>     RX DSP: 0
>>     RX Dboard: A
>>     RX Subdev: SBXv3 RX
>>   TX Channel: 0
>>     TX DSP: 0
>>     TX Dboard: A
>>     TX Subdev: SBXv3 TX
>>=20
>> Setting TX Rate: 1.250000 Msps...
>> Actual TX Rate: 1.250000 Msps...
>>=20
>> Setting TX Freq: 3900.000000 MHz...
>> Setting TX LO Offset: 0.000000 MHz...
>> Actual TX Freq: 3900.000000 MHz...
>>=20
>> Setting TX Gain: 29.500000 dB...
>> Actual TX Gain: 29.500000 dB...
>>=20
>> Setting device timestamp to 0...
>> Checking TX: LO: locked ...
>> Press Ctrl + C to stop streaming...
>> UUUSUUUU[ERROR] [USRP2] Control packet attempt 0, sequence number 470:
>> RuntimeError: no control response, possible packet loss
>> UUUSUUUUSUUUUUU^C     =20
>> Done!
>>=20
>> I appreciate any help that anyone has to offer!
>>=20
>> Best,
>> Austin
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-C5F6B1B3-21F5-449B-A78D-6B01F074AA1F
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Hey Nate,<div>Thanks for the quick response=
 as always! I tried editing those files in the past, but I remember having i=
ssues because they were locked or I wasn=E2=80=99t able to actually save any=
 changes that I made. Is there a way to do it directly via the jtag and usin=
g the screen command to speak with the N310?</div><div><br></div><div>Also, u=
nfortunately for the current project I am working on, we really need to have=
 a wireless connection to the USRPs via the router. I am sure there is some w=
ay to make it work because we can still get data that looks good, it just st=
arts to get clunky after a few seconds of streaming.<br><div dir=3D"ltr"><br=
></div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jan 28, 2020, at 3:=
07 PM, Nate Temple &lt;nate.temple@ettus.com&gt; wrote:<br><br></blockquote>=
</div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><=
div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"=
>Hi Austin,<br><br>The MTUs on your host and N310 must match. You should mod=
ify the systemd configuration on the N310 are restart the whole device or re=
start systemd-networkd <br><br><a href=3D"https://kb.ettus.com/USRP_N300/N31=
0/N320/N321_Getting_Started_Guide#Updating_the_Network_Configurations">https=
://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Updating_the_=
Network_Configurations</a><br><br>It is not recommended to stream over a wir=
eless connection as the additional delay will cause flow control errors. It i=
s also generally recommended to not have a switch in line as some switches c=
an reorder packets. You should directly connect to the USRP for the streamin=
g interfaces. On the N3xx, it's fine to access the RJ45 management port via a=
 switch. <br><br>Regards,<br>Nate Temple<br><br><br></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 28, 202=
0 at 2:52 PM Austin Adam via USRP-users &lt;<a href=3D"mailto:usrp-users@lis=
ts.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi everyone,<div>I ha=
ve a very basic GNU script with just a USRP block and a time sink that when I=
 run, there are tons of streaming errors with the tx and rx. In GNU, the con=
sole is being filled with 'D's and the console for the N210 is getting fille=
d with 'U's and 'S's.<br></div><div><br></div><div>My setup is just a USRP N=
210 connected to the RX LO ports of the N310. I am sending the following com=
mand to the N210:</div><div><i><br></i></div><div><i>"sudo '/home/austin/wor=
karea-uhd/uhd/host/build/examples/tx_waveforms' --args "addr=3D192.168.10.15=
,type=3Dusrp2" --freq 3.90000e9 --ant "TX/RX" --subdev "A:0" --channels 0 --=
rate 1.25e6 --gain 29.5"</i></div><div><i><br></i></div><div>The USRPs are c=
onnected to a router via cat 5e cables, and then my laptop is connected&nbsp=
;to the router via wifi. Something I noticed is that when I connect to the r=
outer via ethernet&nbsp;to my laptop, I don't get any of the performance iss=
ues. It seems to only happen over the wifi.</div><div><br></div><div>When I r=
un ifconfig on my laptop, my MTU is set to 1500, and on the USRP N310 the MT=
U on the sfp0 port that we are using is 8000. I wasn't able to change the MT=
U on the N310 because it said the device was in use, but those values seem t=
o work fine over ethernet so I didn't look too much into it.</div><div><br><=
/div><div>The sample rate on my GNU script is set to 5M for now, and lowerin=
g it does seem to reduce the amount of 'D's that I get, but also negatively a=
ffects our data.&nbsp;</div><div><br></div><div>Lastly, here is some output f=
rom the N210 that shows the error:</div><div><br></div><div><i>austin@Austin=
-Blade:~$ sudo '/home/</i>austin<i>/workarea-uhd/uhd/host/build/examples/tx_=
waveforms' --args "addr=3D192.168.10.15,type=3Dusrp2" --freq 3.90000e9 --ant=
 "TX/RX" --subdev "A:0" --channels 0 --rate 1.25e6 --gain 29.5<br><br>Creati=
ng the usrp device with: addr=3D192.168.10.15,type=3Dusrp2...<br>[INFO] [UHD=
] linux; GNU C++ version 8.3.0; Boost_106700; UHD_3.14.0.HEAD-0-g6875d061<br=
>[INFO] [USRP2] Opening a USRP2/N-Series device...<br>[INFO] [USRP2] Current=
 recv frame size: 1472 bytes<br>[INFO] [USRP2] Current send frame size: 1472=
 bytes<br>Using Device: Single USRP:<br>&nbsp; Device: USRP2 / N-Series Devi=
ce<br>&nbsp; Mboard 0: N210r4<br>&nbsp; RX Channel: 0<br>&nbsp; &nbsp; RX DS=
P: 0<br>&nbsp; &nbsp; RX Dboard: A<br>&nbsp; &nbsp; RX Subdev: SBXv3 RX<br>&=
nbsp; TX Channel: 0<br>&nbsp; &nbsp; TX DSP: 0<br>&nbsp; &nbsp; TX Dboard: A=
<br>&nbsp; &nbsp; TX Subdev: SBXv3 TX<br><br>Setting TX Rate: 1.250000 Msps.=
..<br>Actual TX Rate: 1.250000 Msps...<br><br>Setting TX Freq: 3900.000000 M=
Hz...<br>Setting TX LO Offset: 0.000000 MHz...<br>Actual TX Freq: 3900.00000=
0 MHz...<br><br>Setting TX Gain: 29.500000 dB...<br>Actual TX Gain: 29.50000=
0 dB...<br><br>Setting device timestamp to 0...<br>Checking TX: LO: locked .=
..<br>Press Ctrl + C to stop streaming...<br></i>UUUSUUUU[ERROR] [USRP2] Con=
trol packet attempt 0, sequence number 470:<br>RuntimeError: no control resp=
onse, possible packet loss<br>UUUSUUUUSUUUUUU^C<i>&nbsp; &nbsp; &nbsp;&nbsp;=
<br>Done!</i><br></div><div><i><br></i></div><div>I appreciate any help that=
 anyone has to offer!</div><div><br></div><div>Best,</div><div>Austin</div><=
/div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div></body></html>=

--Apple-Mail-C5F6B1B3-21F5-449B-A78D-6B01F074AA1F--


--===============8951610023444006626==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8951610023444006626==--

