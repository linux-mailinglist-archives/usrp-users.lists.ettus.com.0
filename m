Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CDE29454B
	for <lists+usrp-users@lfdr.de>; Wed, 21 Oct 2020 00:58:57 +0200 (CEST)
Received: from [::1] (port=38438 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kV0aj-0004IO-6m; Tue, 20 Oct 2020 18:58:53 -0400
Received: from mail-ed1-f47.google.com ([209.85.208.47]:46295)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ms230317@gmail.com>) id 1kV0af-0004E3-Tz
 for usrp-users@lists.ettus.com; Tue, 20 Oct 2020 18:58:50 -0400
Received: by mail-ed1-f47.google.com with SMTP id 33so372802edq.13
 for <usrp-users@lists.ettus.com>; Tue, 20 Oct 2020 15:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=85OrGkLfoukdg1qaImMr1mvJGkTSFDQIBwM6rROb9S0=;
 b=X51XKh46GDkBw80f/uIVYRZ9CZZRO+a+3dnZ1ejllV2ocO//epevS14pt4umoVEH83
 XKK59nsCEyGNqimtNB0Quh++m/RnIbpNO7rB1nSCfBOqiARXtn+BC0UOsn5WNFSwjSYq
 ljXJd8XZlKXHaCn6rGzI5DcexCNbXtlMZpvk7vId+G57SH/vaRe10DR1y4zQPQTghlNQ
 faURLf8vLLg0qRRgdaAiSth3YkKoYtSmU2T8+nXT/nZd1GdfYl2dw7C65ClIQp9JofDl
 3EWBqdPsmqHuovbVhzMa/JnUVdKCaeZYHNs2ijuBVD+1eix0QL/2JVr2eD1aOKM69Bwm
 cBgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=85OrGkLfoukdg1qaImMr1mvJGkTSFDQIBwM6rROb9S0=;
 b=pLY7ExRFw9E1IlV2zvTA85F1IGuNgz0SO5U9cFr8Dlh/FgtoPkaJjlWLvlGJt47Foc
 kQYTJgihIWo6a0XA6d5OPuH847qo7Aa61nNzfnJP258yjyma0QU6hjjnZOrwJzqmy6L1
 el0AIxVxQJ+j40K6nbQc34Ncj+pLVjcaMEUhoBPqvqswP8I8IUXmQ4GHGDnl4dUanJW9
 k44BCmyczLFECGaW4jrBLlVDj8ziP2fxveAyFvif56CK65L7iBQYx0dbELKUrIH7upmD
 BMyCpXzKExEAKBtgVnMsUjjJoGnW0R5fu7BrsGT7ccQVFIZZOlhl/O3Dyz+nnzDf3Hpm
 WEEw==
X-Gm-Message-State: AOAM533kLSJYO2jvE7ngz8dUqyy68nJzMAFbVsPthVAJYNlEvA5st6Vw
 Z7NafwH0oXx5BtXhxCAUAP0oAiEDRuKVNvQP1EsDCMSRuVU=
X-Google-Smtp-Source: ABdhPJzNcQEIiSH+eDFyWJ+hhmZ1/3M84svRZ2mgRWPJIQM8RqysSV6o8VnainCQjfyYsBzuvcA5EnuUBadmSWLYnuw=
X-Received: by 2002:aa7:c792:: with SMTP id n18mr239718eds.209.1603234688821; 
 Tue, 20 Oct 2020 15:58:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAFsy4Xg+g3NR1dwe8uKj=rmZQ7TV-HLWvvZcoOuMU_u5Z9_Uow@mail.gmail.com>
 <SL2P216MB0331A7E8B4DD97FAF77519B9931F0@SL2P216MB0331.KORP216.PROD.OUTLOOK.COM>
 <5F8E7777.4090502@gmail.com>
In-Reply-To: <5F8E7777.4090502@gmail.com>
Date: Wed, 21 Oct 2020 00:57:57 +0200
Message-ID: <CAFsy4XiJFhKXHvo9Xi0pJ3LMJtFgp0ZKZTC5UQzkeO6gMTr3Fw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] spectrum availability measurement with usrp
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: My St via USRP-users <usrp-users@lists.ettus.com>
Reply-To: My St <ms230317@gmail.com>
Content-Type: multipart/mixed; boundary="===============5515701515339168328=="
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

--===============5515701515339168328==
Content-Type: multipart/alternative; boundary="0000000000001e706205b2222a06"

--0000000000001e706205b2222a06
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Kyeong and Marcus,

Thank you very much for your answers which help me to see better the
challenges. I intend to start with Wi-Fi signals. We have a lot of Wi-Fi
networks around us and I want to show the occupation/availability of Wi-Fi
channels. I also intend to use gnu-radio.

With best regards,
Trang Nguyen

Le mar. 20 oct. 2020 =C3=A0 07:37, Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> a =C3=A9crit :

> On 10/20/2020 01:05 AM, Kyeong Su Shin via USRP-users wrote:
>
> Hello Trang:
>
> It depends on your applications. USRPs CAN be used to scan and map the
> wireless spectrum, but you will have to determine whether the spectrum is
> empty or not, and it is not a trivial question. For an example, signals
> from satellites and spacecrafts are often below the thermal noise, so you
> will need to use special dish antennas and/or correlate the signals with
> known sequences in order to detect them. Also, USRP B200/B210 are not
> high-end spectrum analyzers, so they may show you some spurious signals
> (possible false positives).
>
> So, yes, it is possible, but I don't know whether they are suitable for
> your use cases.
>
> Regards,
> Kyeong Su Shin
> ------------------------------
>
> Some further wisdom.  SDRs are *components* in an overall engineered RF
> *system and application*.  They aren't "born" knowing your
>   particular application.
>
> You'll need some non-trivial knowledge of software development
> methodologies, DSP knowledge, and knowledge of radio and electronics
>   to develop an application that suits your needs.
>
> Now, there are lots of applications for SDRs in general out there.  I'd
> suggest you query the discuss-gnuradio mailing list as well.
>
> But don't be surprised to find that an application that fits precisely
> what you want to do doesn't exist.
>
> Consider two things:
>
> The set that could be described as "useful things you might want to do
> with radio technology"
> The set that could be described as "useful things you might want to do
> with a computer"
>
> Both of those sets are staggeringly large.  So even an intersection will
> also be staggeringly large.  So it should not perhaps be surprising that
>   not everything that could possibly be done with this technology has
> already been invented, and conveniently packaged.
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000001e706205b2222a06
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear Kyeong and Marcus,</div><div><br></div><div>Than=
k you very much for your answers which help me to see better the challenges=
. I intend to start with Wi-Fi signals. We have a lot of Wi-Fi networks aro=
und us and I want to show the occupation/availability of Wi-Fi channels. I =
also intend to use gnu-radio.</div><div><br></div><div>With best regards,</=
div><div>Trang Nguyen</div><div><br></div><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">Le=C2=A0mar. 20 oct. 2020 =C3=A0=C2=A007:37=
, Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; a =C3=A9crit=
=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 10/20/2020 01:05 AM, Kyeong Su Shin
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        Hello Trang:</div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        <br>
      </div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        It depends on your applications. USRPs CAN be used to scan and
        map the wireless spectrum, but you will have to determine
        whether the spectrum is empty or not, and it is not a trivial
        question. For an example, signals from satellites and
        spacecrafts are often below the thermal noise, so you will need
        to use special dish antennas and/or correlate the signals with
        known sequences in order to detect them. Also, USRP B200/B210
        are not high-end spectrum analyzers, so they may show you some
        spurious signals (possible false positives).</div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        <br>
      </div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        So, yes, it is possible, but I don&#39;t know whether they are
        suitable for your use cases.<br>
      </div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        <br>
      </div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        Regards,</div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        Kyeong Su Shin<br>
      </div>
      <hr style=3D"display:inline-block;width:98%"><br>
    </blockquote>
    Some further wisdom.=C2=A0 SDRs are *components* in an overall engineer=
ed
    RF *system and application*.=C2=A0 They aren&#39;t &quot;born&quot; kno=
wing your<br>
    =C2=A0 particular application.<br>
    <br>
    You&#39;ll need some non-trivial knowledge of software development
    methodologies, DSP knowledge, and knowledge of radio and electronics<br=
>
    =C2=A0 to develop an application that suits your needs.<br>
    <br>
    Now, there are lots of applications for SDRs in general out there.=C2=
=A0
    I&#39;d suggest you query the discuss-gnuradio mailing list as well.<br=
>
    <br>
    But don&#39;t be surprised to find that an application that fits
    precisely what you want to do doesn&#39;t exist.<br>
    <br>
    Consider two things:<br>
    <br>
    The set that could be described as &quot;useful things you might want t=
o
    do with radio technology&quot;<br>
    The set that could be described as &quot;useful things you might want t=
o
    do with a computer&quot;<br>
    <br>
    Both of those sets are staggeringly large.=C2=A0 So even an intersectio=
n
    will also be staggeringly large.=C2=A0 So it should not perhaps be
    surprising that<br>
    =C2=A0 not everything that could possibly be done with this technology
    has already been invented, and conveniently packaged.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000001e706205b2222a06--


--===============5515701515339168328==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5515701515339168328==--

