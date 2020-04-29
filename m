Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F22951BD364
	for <lists+usrp-users@lfdr.de>; Wed, 29 Apr 2020 06:05:04 +0200 (CEST)
Received: from [::1] (port=34448 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jTdy1-0008C0-LB; Wed, 29 Apr 2020 00:05:01 -0400
Received: from mail-ua1-f43.google.com ([209.85.222.43]:35804)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1jTdxw-00083L-RJ
 for usrp-users@lists.ettus.com; Wed, 29 Apr 2020 00:04:56 -0400
Received: by mail-ua1-f43.google.com with SMTP id a7so443432uak.2
 for <usrp-users@lists.ettus.com>; Tue, 28 Apr 2020 21:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RCEnAKKnjTCFGiaH+kp0K1zq3hDvwibGG7hlE0wJugw=;
 b=cRUAr3BrPcnE9IfWPvuk9+8Gvlm0Zyzp6BHdWwFVyvWaFnjt1Sx7SDa7FxHiilcKKH
 btQzGDTPntcxLbPJ+cEQpmTpo71mDM/BJEvjvXVw/gXlk6YKSloDSBPh4cLbAofJxshJ
 fncR3j9Pz857LE8eLB2rS6nOHP2rPIJVEKZuoVl4/hTGCQjtPyMXi+n8YiBT3Xzk37pd
 0MKHKY88fP3aVzplll/H2+FMhuG+9avgJUbIpel3zfEGvipzC+HC5d7C3e5siv0mXxvI
 AyP431HUqHde/pKhZ+tO9lTGNHrQGm3LaHz+RqEmnFF36dxBkpiHFyOFNXExk2ueiMRo
 r67g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RCEnAKKnjTCFGiaH+kp0K1zq3hDvwibGG7hlE0wJugw=;
 b=cnD7XR6jByQ8QmJdKdGgphgk2lAwFPpUUKA/JRkEB6DjGHmvuZBCkwnNhc7rdgTgH+
 TnDVo9ePhhR3/o5WJmFLjinh7jjJsul0PbUm1TkqnOwvSzhWjbVBIASvAekLTJYyq5ej
 lEwv+RbbTGy10DUoj+w1GMGpvAphYKjziD54K528SwttGT91B5J1wXnHjEQ0i8Pi7wMd
 Rje1o2QNmtcfhRRwpnYWESkyIFLSvQ1yKUNdALN8HCYr/22BAcIm97IFw3gZnRiBdvpU
 EMjZxhec5qc45ELXk51+Cpc+yUnP7YZ7VhHWUpkBvTZzT/li3m8qd8RSvoN1RTZq41dW
 IUAQ==
X-Gm-Message-State: AGi0PuaslOZH3m+wEDebHULrWgWeTI6QYUAwDtJchH7M/n68DYt3Uws9
 JbM91d6q1FNfWbu6gCnIP7w/O2t0NLOxVWEnQiBK6B83
X-Google-Smtp-Source: APiQypIW31zaKlZjnuHMMbh2rQ9EAEoqEnXxKgNHERKsnLsZhQPRxBhHgdT7pMhpsFVgu+o/iqA6f7k4wbT+p8Z/pTs=
X-Received: by 2002:ab0:328:: with SMTP id 37mr22129115uat.112.1588133056320; 
 Tue, 28 Apr 2020 21:04:16 -0700 (PDT)
MIME-Version: 1.0
References: <BM1PR01MB33485647B95F4EB1A185B53E88D80@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CAL7q81tGgXZQDNxq9FGViThnFkWE+3YSeLaebKrqP6OqCw1XvA@mail.gmail.com>
 <BM1PR01MB33488D7B9DC5AE9AF435234088D60@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CAL7q81t1RpfgCAY24baDznFWJLM+i21eePoXObHiTAhqO27-FA@mail.gmail.com>
 <BM1PR01MB334874FD80DAE63A2212DC0288D00@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CADRnH22JnbOn46n7Qc4v+RXH4O+BU_WOaBUC=RuLZ1=Kr8z6Cw@mail.gmail.com>
 <BM1PR01MB33484E55A2AC021C9AB286CD88D00@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CADRnH22h_Z=-92c0yZdyiietMX06mvFai2uvSQG6Li7o_ZPnCQ@mail.gmail.com>
 <BM1PR01MB3348AB438B2ED7F0153900B188AC0@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BM1PR01MB3348AB438B2ED7F0153900B188AC0@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
Date: Wed, 29 Apr 2020 00:03:40 -0400
Message-ID: <CAL7q81uw6r51Tow3h1sQaRqk+sZbTm0pGmgewvwz7bYQdfrw2Q@mail.gmail.com>
To: Snehasish Kar <snehasish.cse@live.com>
Subject: Re: [USRP-users] Fractional downsampling in rfnoc
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4255767044143248615=="
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

--===============4255767044143248615==
Content-Type: multipart/alternative; boundary="000000000000adaa9805a4660a6f"

--000000000000adaa9805a4660a6f
Content-Type: text/plain; charset="UTF-8"

Hi Snehasish,

That's surprising, I didn't think it was possible to do that. How did you
re-create the EDIF file?

The noc_shell and axi_wrapper modules have both changed internally quite a
bit, but their interfaces have only minor changes. The noc_shell interface
change is simply adding the set_time, set_hase_time output signals. Those
outputs can be left unconnected. The axi_wrapper interface now has a
bus_clk and bus_rst input. To complicate things, the code uses a modified
axi_wrapper called axi_wrapper_mod. You could compare the latest
axi_wrapper with axi_wrapper_mod and merge in the differences.

Jonathon

On Tue, Apr 28, 2020 at 5:37 PM Snehasish Kar <snehasish.cse@live.com>
wrote:

> Snehasish Kar has shared a OneDrive file with you. To view it, click the
> link below.
> <https://1drv.ms/u/s!Ar2IfAyw5vH1gQ1d_w2fUe4IbyWP>
> fract_dec_filter.edf <https://1drv.ms/u/s!Ar2IfAyw5vH1gQ1d_w2fUe4IbyWP>
> <https://1drv.ms/u/s!Ar2IfAyw5vH1gQ1d_w2fUe4IbyWP>
>
> Hello
>
> > 25msps and tried dividing it into 16 channels. I should have returned
> 625kspsx2 sample rate each channel
>
> >Based on your screen shot I'm guessing you started with 10 Msps and used
> 16 channels to get 625 kHz channel spacing (with 1250 ksps per channel). Is
> that correct?
>
> Yes.
> > But you can see the snaphshots, if a tune into 955.4MHz and try to get a
> channel on index 0 ie the center freq, it works well and I am able to
> decode GSM Burst from it. But if I try to add index 2(which is 955.8MHz),
> the amplitude in the spectrum falls and also I am not able to decode any
> GSM burst
>
> >Is it correct that your "index 2" center frequency is targetting 400 kHz
> offset from the center frequency? If so, I dont expect this would work.
> Using a channel spacing of 625 kHz, the >closest channel you could receive
> next to 955.4 MHz would be 956.025 MHz. Based on your screenshot it
> actually seems like the peak energy you're looking for may be lower than
> the >channel frequency by about 200 kHz?
>
> No. The reason we found for the low energy was that the center of the
> channel was getting shifted by 100KHz, which we corrected using the
> frequency Xlating fir filter in gnuradio and also by changing the input
> sample rate.
>
> @EJ Kreinar <ejkreinar@gmail.com>: thanks for the support.
>
> @Jonathon Pendlum <jonathon.pendlum@ettus.com>: I was able to re-create
> the EDIF file for the fractional downsampler in
> https://github.com/SynchronousLabs/rfnoc-SynchronousLabs and was able to
> build it. Though I believe I need to update the rfnoc API for the same. I
> have the attached EDIF file for your reference. Please guide me if only
> modifying the noc file work or we any other changes are to be made as per
> the new rfnoc version.
>
> Regards
> Snehasish
>
>
>

--000000000000adaa9805a4660a6f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0Snehasish,<div><br></div><div>That&#39;s surprisin=
g, I didn&#39;t think it was possible to do that. How did you re-create the=
 EDIF file?</div><div><br></div><div>The noc_shell and axi_wrapper modules =
have both changed internally quite a bit,=C2=A0but their interfaces have on=
ly minor changes. The noc_shell interface change is simply adding the set_t=
ime, set_hase_time output signals. Those outputs can=C2=A0be left unconnect=
ed. The axi_wrapper interface now has a bus_clk and bus_rst input. To compl=
icate things, the code uses a modified axi_wrapper called axi_wrapper_mod. =
You could compare the latest axi_wrapper with axi_wrapper_mod and merge in =
the differences.</div><div><br></div><div>Jonathon</div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 28, 202=
0 at 5:37 PM Snehasish Kar &lt;<a href=3D"mailto:snehasish.cse@live.com">sn=
ehasish.cse@live.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">




<div dir=3D"ltr">

<div id=3D"gmail-m_-2560763327289423780OwaReferenceAttachments">
<table style=3D"padding-bottom:13px;border-width:0px;border-style:none">
<tbody>
<tr valign=3D"top">
<td>
<table style=3D"border-width:0px 0px 1px;border-color:rgb(199,199,199);bord=
er-style:none none dotted">
<tbody>
<tr valign=3D"top">
<td style=3D"padding-bottom:7px">
<table align=3D"left" style=3D"padding-right:28px;border-width:0px;backgrou=
nd-color:rgb(255,255,255);border-spacing:0px">
<tbody>
<tr valign=3D"top">
<td style=3D"padding:0px">
<div id=3D"gmail-m_-2560763327289423780OwaReferenceAttachmentDescription" s=
tyle=3D"padding-left:3px;font-size:14px;font-family:&quot;Segoe UI&quot;,&q=
uot;Segoe WP&quot;,&quot;Segoe UI WPC&quot;,Tahoma,Arial,sans-serif;color:r=
gb(102,102,102)">
Snehasish Kar has shared a OneDrive file with you. To view it, click the li=
nk below.
</div>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr valign=3D"top">
<td><a href=3D"https://1drv.ms/u/s!Ar2IfAyw5vH1gQ1d_w2fUe4IbyWP" target=3D"=
_blank">
<table align=3D"left" style=3D"padding-right:28px;padding-bottom:10px;borde=
r-width:0px;height:20px;background-color:rgb(255,255,255);border-spacing:0p=
x">
<tbody>
<tr valign=3D"top">
<td style=3D"padding:0px">
<div style=3D"background-color:rgb(255,255,255);height:20px;width:20px;max-=
height:20px">
<a href=3D"https://1drv.ms/u/s!Ar2IfAyw5vH1gQ1d_w2fUe4IbyWP" target=3D"_bla=
nk"><img width=3D"20" style=3D"border: 0px;" src=3D"https://r1.res.office36=
5.com/owa/prem/images/dc-generic_20.png"></a></div>
</td>
<td>
<div id=3D"gmail-m_-2560763327289423780OwaReferenceAttachmentFileName2" sty=
le=3D"padding:0px 0px 0px 5px;font-size:14px;font-family:&quot;Segoe UI&quo=
t;,&quot;Segoe WP&quot;,&quot;Segoe UI WPC&quot;,Tahoma,Arial,sans-serif;co=
lor:rgb(0,114,198)">
<a href=3D"https://1drv.ms/u/s!Ar2IfAyw5vH1gQ1d_w2fUe4IbyWP" style=3D"text-=
decoration:none;margin:0px;font-size:14px;font-family:&quot;Segoe UI&quot;,=
&quot;Segoe WP&quot;,&quot;Segoe UI WPC&quot;,Tahoma,Arial,sans-serif;color=
:rgb(0,114,198)" target=3D"_blank">fract_dec_filter.edf</a></div>
</td>
<td style=3D"display:none" width=3D"0" height=3D"0"></td>
</tr>
</tbody>
</table>
</a></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</div>
<div id=3D"gmail-m_-2560763327289423780OwaReferenceAttachmentsEnd" style=3D=
"display:none"></div>

<div id=3D"gmail-m_-2560763327289423780appendonsend" style=3D"font-family:C=
alibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Hello<br>
</div>
<div>
<div dir=3D"ltr"><br>
&gt; 25msps and tried dividing it into 16 channels. I should have returned =
625kspsx2 sample rate each channel<br>
<br>
&gt;Based on your screen shot I&#39;m guessing you started with 10 Msps and=
 used 16 channels to get 625 kHz channel spacing (with 1250 ksps per channe=
l). Is that correct?</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Yes.</div>
<div dir=3D"ltr">&gt; But you can see the snaphshots, if a tune into 955.4M=
Hz and try to get a channel on index 0 ie the center freq, it works well an=
d I am able to decode GSM Burst from it. But if I try to add index 2(which =
is 955.8MHz), the amplitude in the spectrum
 falls and also I am not able to decode any GSM burst<br>
<br>
&gt;Is it correct that your &quot;index 2&quot; center frequency is targett=
ing 400 kHz offset from the center frequency? If so, I dont expect this wou=
ld work. Using a channel spacing of 625 kHz, the &gt;closest channel you co=
uld receive next to 955.4 MHz would be 956.025 MHz.
 Based on your screenshot it actually seems like the peak energy you&#39;re=
 looking for may be lower than the &gt;channel frequency by about 200 kHz?<=
/div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">No. The reason we found for the low energy was that the ce=
nter of the channel was getting shifted by 100KHz, which we corrected using=
 the frequency Xlating fir filter in gnuradio and also by changing the inpu=
t sample rate.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr"><a id=3D"gmail-m_-2560763327289423780OWAAM426188" href=3D"=
mailto:ejkreinar@gmail.com" target=3D"_blank">@EJ Kreinar</a>: thanks for t=
he support.<br>
<div><br>
</div>
<div><a id=3D"gmail-m_-2560763327289423780OWAAM876983" href=3D"mailto:jonat=
hon.pendlum@ettus.com" target=3D"_blank">@Jonathon Pendlum</a>: I was able =
to re-create the EDIF file for the fractional downsampler in
<a href=3D"https://github.com/SynchronousLabs/rfnoc-SynchronousLabs" id=3D"=
gmail-m_-2560763327289423780LPNoLP290202" target=3D"_blank">
https://github.com/SynchronousLabs/rfnoc-SynchronousLabs</a> and was able t=
o build it. Though I believe I need to update the rfnoc API for the same. I=
 have the attached EDIF file for your reference. Please guide me if only mo=
difying the noc file work or we
 any other changes are to be made as per the new rfnoc version.</div>
<div><br>
</div>
<div>Regards</div>
<div>Snehasish<br>
</div>
<br>
<div><br>
</div>
</div>
</div>
</div>

</blockquote></div>

--000000000000adaa9805a4660a6f--


--===============4255767044143248615==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4255767044143248615==--

