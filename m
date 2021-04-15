Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 797553608E3
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 14:06:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B430C383E5B
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 08:06:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="d5tJrtpE";
	dkim-atps=neutral
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	by mm2.emwd.com (Postfix) with ESMTPS id EED9E383D15
	for <usrp-users@lists.ettus.com>; Thu, 15 Apr 2021 08:05:45 -0400 (EDT)
Received: by mail-pj1-f41.google.com with SMTP id il9-20020a17090b1649b0290114bcb0d6c2so14308102pjb.0
        for <usrp-users@lists.ettus.com>; Thu, 15 Apr 2021 05:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=OVdT8zMW5tE2tuqaOKtgYJLkevmbo3NtH0qlheHNK/o=;
        b=d5tJrtpE1FyqZmwajgG8OEFXq27I8SvgYnUydjzElnlHSkVm+A0+Mz0PVuJlw9Fmiv
         lZGWhNJ0RtQxBH6r6CLeI8yT+i8MxII7+BacP7hpGqERE8f0odlUFHc6dOuxjfPVWfGS
         XcKODVsZrS9sVi5uIxuHQ6w3xu8hCUiKjgnJTult1XuIb6+xsI/zNxnQ7pNFCtknag0A
         P2+n7k58Jk2QnWtGjYVuTzZcobhLXyuvWjrAFpffJXrSIY10rS8G5VVRN7DkD4fX7nJ1
         wB0GQWB6P7Q3MCd8DhfRHzrgSagdGBo6suvW3Dhmd6BLGPq1I9Mb/xC7q0H35zRoASiW
         5mBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=OVdT8zMW5tE2tuqaOKtgYJLkevmbo3NtH0qlheHNK/o=;
        b=GM63wO+UdTjQo6TGrmoXLwDHB9I/5bYKqvWBPomBjsRAfV1RV39Inc0E3Z0eUs1Bj7
         tMpEdGrZXgSPLsyjEz+YvNiEwh2Tm4WZ/WcVi/TCAN1c4T/4xvdxrLzW0tXRbm+pfjVs
         BVu4q0FQOcOnlClrAtEiNDzInDs9eDbMIH4HBIRtMuwB+5ZcggPAzXcvgfRSZio0izmj
         bVyZdz+gXCHegrDC1HBpn+WYjKBfkdcDGLUNI6gGpZcc7UiXciQtl4itX9U5BCtimZkp
         Y9/PkUIIR4ieox+mArvKdJ0KSBQk85CQp6xHTwsPAA1utb064J662okoRIaT0rzSo1zn
         a35g==
X-Gm-Message-State: AOAM533wJH77zWbgEzK5F184vZxFNSPulnPezdUDSO+XtlCVAv5dRr5Y
	YNLtzq3EHd8Q2F9kaHnnWzDge5fYCPhcJ66LcirDc1XrCRo=
X-Google-Smtp-Source: ABdhPJyAoWeoOQdOP1obWzcwZ8xbUFmgGh4znl2666aYyeMxSeVTo8E1DwRTyo5FpSEXoGNIc2pntMTpWb9DsdIF61g=
X-Received: by 2002:a17:90a:6285:: with SMTP id d5mr3583789pjj.136.1618488345115;
 Thu, 15 Apr 2021 05:05:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAP+KAYCaFKLxpMQ9vZWcss7M50ug5+W_YdKjpoaeWk=qQqdG0w@mail.gmail.com>
 <8366A24E-4707-46FC-9FFE-1B3B1D8D113C@gmail.com>
In-Reply-To: <8366A24E-4707-46FC-9FFE-1B3B1D8D113C@gmail.com>
From: "Anthony B." <anthonyld508@gmail.com>
Date: Thu, 15 Apr 2021 14:05:36 +0200
Message-ID: <CAP+KAYDoTgsErubcweNxBU=yP0Gj2eNsoe=EDgJeiMY4HhrVhg@mail.gmail.com>
To: Dylan Baros <dcbaros@utexas.edu>, usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: IE6JKPTYZFRGKPZVIQV6Y2NSMQWOVGAU
X-Message-ID-Hash: IE6JKPTYZFRGKPZVIQV6Y2NSMQWOVGAU
X-MailFrom: anthonyld508@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Setting network configuration (MTU) on the N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IE6JKPTYZFRGKPZVIQV6Y2NSMQWOVGAU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6337093722390872740=="

--===============6337093722390872740==
Content-Type: multipart/alternative; boundary="000000000000e25bd905c001aeb7"

--000000000000e25bd905c001aeb7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Dylan, thanks these were the files I was looking for!
I can edit the default network config from now on.

Best,
Anthony

Le jeu. 15 avr. 2021 =C3=A0 11:53, Dylan Baros <dcbaros@utexas.edu> a =C3=
=A9crit :

> Hey Anthony, Try editing the files in /data/network.
> -Dylan
>
> Sent from my iPhone
>
> On Apr 15, 2021, at 4:09 AM, Anthony B. <anthonyld508@gmail.com> wrote:
>
> =EF=BB=BF
> Hello all,
>
> I meet some streaming issues with a USRP N310 I'd like to further
> investigate.
>
> Currently I am only using a 1Gb link with the SFP0 port. I set up the
> network config following this :
>
> https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Setti=
ng_Up_a_Streaming_Connection
>
> It is recommended to set a MTU of 1500 on the SFP0 interface, so I
> configured the Ethernet interface on the host PC accordingly.
> When I check the MTU on the N310, it is set by default to 9000 on the SFP=
0
> interface.
> If I try to change it using ifconfig, it tells that the resource is busy
> and in any case it's not permanent in the command line.
>
> So I edited the network configuration files as described here :
>
> https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Updat=
ing_the_Network_Configurations
> On the N310, I created a file sfp0.network in /etc/systemd/network with
> this content :
>
> [Match]
> Name=3Dsfp0
>
> [Network]
> Address=3D192.168.10.2/24
>
> [Link]
> MTUBytes=3D1500
>
> deleted the ~residual files from vi, and ran : systemctl restart
> systemd-networkd
>
> But it doesn't seem to change the default settings afterwards or whenever
> the USRP N310 is restarted.
> How can I set the MTU for a 1Gb link on the N310 sfp0 interface ?
>
> Thanks for any suggestion!
>
> Anthony
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--000000000000e25bd905c001aeb7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Dylan, thanks these were the files I was looking for=
!=C2=A0<div>I can edit the default network config from now on.<div><br></di=
v><div>Best,</div><div>Anthony</div></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0jeu. 15 avr. 2021 =C3=A0=
=C2=A011:53, Dylan Baros &lt;<a href=3D"mailto:dcbaros@utexas.edu">dcbaros@=
utexas.edu</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"auto">Hey Anthony, Try editing the files=
 in /data/network.=C2=A0<div>-Dylan=C2=A0<br><br><div dir=3D"ltr">Sent from=
 my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 15, 2=
021, at 4:09 AM, Anthony B. &lt;<a href=3D"mailto:anthonyld508@gmail.com" t=
arget=3D"_blank">anthonyld508@gmail.com</a>&gt; wrote:<br><br></blockquote>=
</div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">=
Hello all,<br><br>I meet some streaming issues with a USRP N310 I&#39;d lik=
e to further investigate.<br><br>Currently I am only using a 1Gb link with =
the SFP0 port. I set up the network config following this : <br><a href=3D"=
https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Setting=
_Up_a_Streaming_Connection" target=3D"_blank">https://kb.ettus.com/USRP_N30=
0/N310/N320/N321_Getting_Started_Guide#Setting_Up_a_Streaming_Connection</a=
><br><br>It is recommended to set a MTU of 1500 on the SFP0 interface, so I=
 configured the Ethernet interface on the host PC accordingly. <br>When I c=
heck the MTU on the N310, it is set by default to 9000 on the SFP0 interfac=
e. <br>If I try to change it using ifconfig, it tells that the resource is =
busy and in any case it&#39;s not permanent in the command line.<br><br>So =
I edited the network configuration files as described here : <br><a href=3D=
"https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Updati=
ng_the_Network_Configurations" target=3D"_blank">https://kb.ettus.com/USRP_=
N300/N310/N320/N321_Getting_Started_Guide#Updating_the_Network_Configuratio=
ns</a><br>On the N310, I created a file sfp0.network in /etc/systemd/networ=
k with this content : <br><br>[Match]<br>Name=3Dsfp0<br><br>[Network]<br>Ad=
dress=3D<a href=3D"http://192.168.10.2/24" target=3D"_blank">192.168.10.2/2=
4</a><br><br>[Link]<br>MTUBytes=3D1500<br><br>deleted the ~residual files f=
rom vi, and ran : systemctl restart systemd-networkd<br><br>But it doesn&#3=
9;t seem to change the default settings afterwards or whenever the USRP N31=
0 is restarted.<br>How can I set the MTU for a 1Gb link on the N310 sfp0 in=
terface ?<br><br>Thanks for any suggestion!<br><br>Anthony<br></div>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a></span><br><span>To unsubscribe s=
end an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a></span><br></div></blockquo=
te></div></div></blockquote></div>

--000000000000e25bd905c001aeb7--

--===============6337093722390872740==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6337093722390872740==--
