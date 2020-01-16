Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D6513D6DC
	for <lists+usrp-users@lfdr.de>; Thu, 16 Jan 2020 10:28:54 +0100 (CET)
Received: from [::1] (port=43910 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1is1SL-0001Nw-UT; Thu, 16 Jan 2020 04:28:49 -0500
Received: from mail-lf1-f48.google.com ([209.85.167.48]:32850)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ee16b025@ee.iitm.ac.in>)
 id 1is1SH-0001Ka-7I
 for usrp-users@lists.ettus.com; Thu, 16 Jan 2020 04:28:45 -0500
Received: by mail-lf1-f48.google.com with SMTP id n25so15062605lfl.0
 for <usrp-users@lists.ettus.com>; Thu, 16 Jan 2020 01:28:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ee-iitm-ac-in.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=11cW2YCtZUkNtj0KKWFsA3oeOPsSud1Omn3GuPIjAdk=;
 b=RZG4WOaL3B+Q/u62xWgzD5BN/m4abmq2uISmZi3/5FjFs3tzymjApEN7b+Vg+aCKpd
 J0WVSRMZeh6IYcCwDbT0Jm0CIFl+LecqrucsiVHmK6QDiyDFjsFPNwnc4uFfJMI76jhE
 V4stLe90DsOP1IOWm2/6pd8H31Pt0/D1c5BofSEAQ8eO9hGzUv7Cok3mp5AP0cJhWUxq
 sjBXNWxlXtgaw7Y0leH/v281sIFcURuX5rc+ozwcBn8qPCyCsNcyOuR3DB5jNwXh7kO3
 /oCsLZgoVbcgl12qWeW6ZTPAefcZztEBOnTN0cCe1AC+CU1VIgCWw9NY/W24VPhcp2dS
 NCFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=11cW2YCtZUkNtj0KKWFsA3oeOPsSud1Omn3GuPIjAdk=;
 b=ceRrVVF+SmaqMNWigu0HCJdqkitCPyyudQ7guRXV+96sMKfwzSyK6Qy4n3KLMCOwTI
 Z+3k0SEsSmtu4scU/J7QLv2sm1D6OMcIWOErW9PJTzB8EHk8fO5wFAi93dOaPRiHRG8X
 n936Jtx05bdlIgJdea+e+3BLJVedVdHWqMloUOpAE2c4YWRDMRpeQwwhW8lXvWije/z8
 FY4l6tzfdSdWVd6MsCFuOrKoQ6AvFGd6n78LTK+j+yard7LftJ3KMxFKuMoaqSbMeJ8r
 KkoASQYCPw682/2AP+vRYleLBrShRGjh/q6SE/2sfoocvFktVB0Ajtz/R/BCq2JTrQx2
 lnEg==
X-Gm-Message-State: APjAAAXlI2yzG5SKb3WqBNq1MHJy4bC/sL+/EhzY0G/lFbofytaVYMRS
 QH6ckEF6bIC5F1zfdCZsBxmlHIoqKskZqOh3o7iXBg==
X-Google-Smtp-Source: APXvYqw4lqPKfzrE4e9V01nBLJO0U6/otYWXK9nt6cxVeYoVGEWmHhnS8/TXMT4pM+1+lsvX2NzkYhpViwcjuuFdjbU=
X-Received: by 2002:ac2:59dc:: with SMTP id x28mr1907074lfn.38.1579166883619; 
 Thu, 16 Jan 2020 01:28:03 -0800 (PST)
MIME-Version: 1.0
References: <CAC5MLo6XRYaw7MahbQvvgnda+6Yud_nkUNOYdbacfiGR1Z0jKg@mail.gmail.com>
 <CANf970a2QsvOXf4W+qfnHfwbPo=+=O5_tifcy-VcC2_S2p5WyA@mail.gmail.com>
In-Reply-To: <CANf970a2QsvOXf4W+qfnHfwbPo=+=O5_tifcy-VcC2_S2p5WyA@mail.gmail.com>
Date: Thu, 16 Jan 2020 14:54:06 +0530
Message-ID: <CAC5MLo44=3Ok2wUU+TY6nKab79qH5zTDWNhTEztqDXuEzoRSiA@mail.gmail.com>
To: Sam Reiter <sam.reiter@ettus.com>
Subject: Re: [USRP-users] Regarding N321 shutdown
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
From: MILIND KUMAR VADDIRAJU via USRP-users <usrp-users@lists.ettus.com>
Reply-To: MILIND KUMAR VADDIRAJU <ee16b025@ee.iitm.ac.in>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4615213115081847347=="
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

--===============4615213115081847347==
Content-Type: multipart/alternative; boundary="00000000000023bc68059c3e71ea"

--00000000000023bc68059c3e71ea
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you!

On Fri, Jan 10, 2020 at 9:20 PM Sam Reiter <sam.reiter@ettus.com> wrote:

> Milind,
>
> You should run that command when you're ssh'ed into the device or have a
> serial session open. That command won't affect the N321 if it is simply r=
un
> from a host terminal (I'd imagine it will just shut down your host).
>
> Connecting via SSH:
> https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Conne=
cting_to_the_ARM_via_SSH
>
> Setting up a Serial Console Connection:
> https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Setti=
ng_up_a_Serial_Console_Connection
>
> -Sam
>
> On Fri, Jan 10, 2020 at 6:30 AM MILIND KUMAR VADDIRAJU via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>>
>> I'm new to the world of SDR and have just been handed a USRP N321. The
>> guide here
>> <https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide>
>> strongly recommends shutting the system down correctly instead of using =
a
>> long press of the power button. However the command
>>
>> shutdown =C2=AD-h now
>>
>> in the terminal of a host computer connected to the USRP via an ethernet=
 cable fails. Could
>> someone please let me know what the appropriate method to shut the USRP =
down is?
>>
>> Cheers,
>>
>> Milind
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--00000000000023bc68059c3e71ea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you!<br></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Fri, Jan 10, 2020 at 9:20 PM Sam Reiter &=
lt;<a href=3D"mailto:sam.reiter@ettus.com">sam.reiter@ettus.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div>Milind,</div><div><br></div><div>You should run that command when=
 you&#39;re ssh&#39;ed into the device or have a serial session open. That =
command won&#39;t affect the N321 if it is simply run from a host terminal =
(I&#39;d imagine it will just shut down your host). <br></div><div><br></di=
v><div>Connecting via SSH: <a href=3D"https://kb.ettus.com/USRP_N300/N310/N=
320/N321_Getting_Started_Guide#Connecting_to_the_ARM_via_SSH" target=3D"_bl=
ank">https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Co=
nnecting_to_the_ARM_via_SSH</a></div><div><br></div><div>Setting up a Seria=
l Console Connection: <a href=3D"https://kb.ettus.com/USRP_N300/N310/N320/N=
321_Getting_Started_Guide#Setting_up_a_Serial_Console_Connection" target=3D=
"_blank">https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guid=
e#Setting_up_a_Serial_Console_Connection</a></div><div><br></div><div><div =
dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr">-Sam<br></div></div></di=
v></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Jan 10, 2020 at 6:30 AM MILIND KUMAR VADDIRAJU via =
USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi,</div><div><br></div=
><div>I&#39;m new to the world of SDR and have just been handed a USRP N321=
. The guide <a href=3D"https://kb.ettus.com/USRP_N300/N310/N320/N321_Gettin=
g_Started_Guide" target=3D"_blank">here</a> strongly recommends shutting th=
e system down correctly instead of using a long press of the power button. =
However the command <br><pre>shutdown =C2=AD-h now<br><font size=3D"2"><fon=
t face=3D"georgia,serif"><br>in the terminal of a host computer connected t=
o the USRP via an ethernet cable fails. Could <br>someone please let me kno=
w what the appropriate method to shut the USRP down is?</font></font><br><f=
ont size=3D"2"><span style=3D"font-family:georgia,serif"><br>Cheers,</span>=
</font><font size=3D"2"><span style=3D"font-family:georgia,serif"><br></spa=
n></font></pre><pre><font size=3D"2"><span style=3D"font-family:georgia,ser=
if">Milind</span></font><br></pre> </div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--00000000000023bc68059c3e71ea--


--===============4615213115081847347==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4615213115081847347==--

