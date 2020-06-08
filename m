Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD531F1EE9
	for <lists+usrp-users@lfdr.de>; Mon,  8 Jun 2020 20:25:11 +0200 (CEST)
Received: from [::1] (port=53598 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jiMSK-0007X2-MW; Mon, 08 Jun 2020 14:25:08 -0400
Received: from mail-qk1-f180.google.com ([209.85.222.180]:36313)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <siddsubra@gmail.com>) id 1jiMSG-0007Fh-H1
 for usrp-users@lists.ettus.com; Mon, 08 Jun 2020 14:25:04 -0400
Received: by mail-qk1-f180.google.com with SMTP id 205so18253307qkg.3
 for <usrp-users@lists.ettus.com>; Mon, 08 Jun 2020 11:24:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:mime-version:subject:from:in-reply-to:cc
 :date:message-id:references:to;
 bh=2YwyjGMLjTDibL3J6q789OLVsKU5q45EjuyGJ+ryr6w=;
 b=i0/XNny4zKEzfObztM7/ylFW88saKdKdiW1OlB8bI65GUKWtWc0Ae/4Iz+QGMqnhry
 EGv5qvN2sfsd6Tix6g7uCPl6UPoPyZb7igyu9rq7Nv8i7hsjNNeBnGGLiU3N02ovfl+B
 r/6PnpOdFgeBy+9vm1On+ueaDpfXgGuShLPbevNLPuPj5j9dVK529Fiir/ySZA32TrgI
 Qu+NEJ2lc88gkvdWRFH//mJc+QwuE93rS8bCTcW4UgDahK62IsaoUb5eYTCUBpkqyUJH
 9Wb5uKv+pnGzcBirW8+QV7Zubvf4b4d13jGxLlwB0ML28jc+rgnQVwXIiKqgeImNWvHY
 FogQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:mime-version:subject
 :from:in-reply-to:cc:date:message-id:references:to;
 bh=2YwyjGMLjTDibL3J6q789OLVsKU5q45EjuyGJ+ryr6w=;
 b=hq2UUq/NoXV9lYnKe/YE9/R6l7eJwgSAsxbydkAjjhEgcUBx7kRUloZ/vxV9X4WopD
 LlPVpP4/ui32PyU00Pi94xwsGpgrEjbCNyjJLrqxfbthrkn8kj4HFH/sNaMqCe3VsKcv
 e6nZOD1OdqgTzxU6pRvA0VFo2CY+Rw3HWLhBM9LC0Dw5RoLSR9EvJkzVmmRgXnRp+bjE
 UT0fSnx094Jt1oEORdnv6K/Kq7/NhMv9060gu2c/PJGu+QgzCbt28MtheB5IfyhUK2KD
 oK/6A2XONRGTKj2HOq4Zc7O+YhMgYNLw2kDsP5Bie80UdbPWyk8HlbFZ93UpvOrgKmzW
 lB6A==
X-Gm-Message-State: AOAM531ipv64RR4k4FCXYvVl8hZGdbiyEW+F9rt3sX7VaagpGmYLv3Kd
 PDp1kPL4T+4gUtvZO+lRVEJgCjg5Nzo=
X-Google-Smtp-Source: ABdhPJwfBoiux47tQw555tFGE10f0icOyFuGlxRu6ISKZnFZ+pJZ0LPXvvPq6KkCCiMQMFjPzabRJg==
X-Received: by 2002:a37:a9d7:: with SMTP id s206mr23589466qke.6.1591640663019; 
 Mon, 08 Jun 2020 11:24:23 -0700 (PDT)
Received: from [192.168.86.250] (c-73-236-113-201.hsd1.wv.comcast.net.
 [73.236.113.201])
 by smtp.gmail.com with ESMTPSA id 79sm7374176qkf.48.2020.06.08.11.24.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Jun 2020 11:24:20 -0700 (PDT)
Mime-Version: 1.0 (1.0)
In-Reply-To: <5EDCA70B.1030809@gmail.com>
Date: Mon, 8 Jun 2020 14:24:19 -0400
Message-Id: <961567FA-9692-4C81-BC86-AC132BE4794E@gmail.com>
References: <5EDCA70B.1030809@gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
X-Mailer: iPad Mail (17F75)
Subject: Re: [USRP-users] Clock Bias from board mounted GPSDO
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
From: Sidd Subramanyam via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sidd Subramanyam <siddsubra@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============1260806900869884600=="
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


--===============1260806900869884600==
Content-Type: multipart/alternative; boundary=Apple-Mail-D8914F37-86E2-4C2D-9D9F-D593A0F10D13
Content-Transfer-Encoding: 7bit


--Apple-Mail-D8914F37-86E2-4C2D-9D9F-D593A0F10D13
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I am cross-correlating post-facto via a MATLAB script. Could you provide som=
e Reading regarding the integer N tuning and how it=E2=80=99s used? I added e=
xactly your command and initially didn=E2=80=99t seem to have too much of an=
 effect. The logged start times do indeed line up exactly. I am sampling at 4=
 MHz collecting 1 second of data so the listed output is 4 million samples i=
n sc16 format. That code snippet you mentioned never triggers an overflow of=
 dropped samples.

-Sidd

>=20
>> On Jun 7, 2020, at 4:36 AM, Marcus D. Leech <patchvonbraun@gmail.com> wro=
te:
> =EF=BB=BF
> On 06/06/2020 08:54 AM, Sidd Subramanyam wrote:
>> Thank you for this clarification regarding the 10 MHz drift and the 1 PPS=
 pulse. When you mention that the 10 MHz outputs will not precisely track ea=
ch other in the short run but better in the long run, could you provide an e=
stimate for the duration at which the behavior will track better? My previou=
s email had stated how in a 1 second interval I was experiencing around a ~3=
00 nanosecond drift. However, in other samples I had taken spanning upto 30 s=
econds, this drift seemed to worsen upto ~15-17 microseconds. =46rom your em=
ail regarding how much the 10 MHz deviates during the short run as well as i=
ts long term behavior I=E2=80=99m very sure I must be doing something wrong i=
n my code setup.
>>=20
>> I have provided some code sections of how I am attempting to synchronize t=
he time. I start this script at roughly the same time (within about a couple=
 of seconds) on both USRPs, and they begin to initialize settings such as ba=
ndwidth and center frequency. I then have them wait to start collection at t=
he nearest rounded up 10 second time multiple of GPS time in seconds, since t=
he initialization can take varying time for both USRPs to initialize. I also=
 attached the full code to this email.
>>=20
>>=20
> I don't immediately see anything wrong with your code, but of course, this=
 code is just recording samples, which you are presumably
>   cross-correlating in an "offline" manner post-facto?
>=20
> Something you might try is to use integer-N tuning, which may result in a m=
ore mutually-coherent LO setting across your two
>   synthesizers:
>=20
> tune_req.args =3D uhd::device_addr_t("mode_n=3Dinteger");
>=20
> Also, you log the time when the recording is expected to take place--are t=
hese values actually the same in the two instances?
>=20
> What sample rate are you using?  How much data are you recording?
>=20
> Is this code ever triggered?
>=20
>         if (time_tmp > 0.000001)
>         {
>             std::cout << boost::format("XX %d Get Time of USRP %f\n") % f %=
 num_dropped_samps;
>         }

--Apple-Mail-D8914F37-86E2-4C2D-9D9F-D593A0F10D13
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div dir=3D"ltr"><meta http-equiv=3D"conten=
t-type" content=3D"text/html; charset=3Dutf-8">I am cross-correlating post-f=
acto via a MATLAB script. Could you provide some Reading regarding the integ=
er N tuning and how it=E2=80=99s used? I added exactly your command and init=
ially didn=E2=80=99t seem to have too much of an effect. The logged start ti=
mes do indeed line up exactly. I am sampling at 4 MHz collecting 1 second of=
 data so the listed output is 4 million samples in sc16 format. That code sn=
ippet you mentioned never triggers an overflow of dropped samples.</div><div=
 dir=3D"ltr"><br></div><div dir=3D"ltr">-Sidd<br><br><div dir=3D"ltr"><block=
quote type=3D"cite"><br>On Jun 7, 2020, at 4:36 AM, Marcus D. Leech &lt;patc=
hvonbraun@gmail.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D=
"cite"><div dir=3D"ltr">=EF=BB=BF
 =20
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Type"=
>
 =20
 =20
    <div class=3D"moz-cite-prefix">On 06/06/2020 08:54 AM, Sidd
      Subramanyam wrote:<br>
    </div>
    <blockquote cite=3D"mid:CADVsdEFd1QJO4vC=3DfPR7cXJC-WERK8QTYS_1OMsjWAubx=
e7UNw@mail.gmail.com" type=3D"cite">
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div style=3D"font-family:Helvetica;font-size:12px"><font color=3D=
"#000000">Thank you for this clarification regarding
              the 10 MHz drift and the 1 PPS pulse. When you mention
              that the 10 MHz outputs will not precisely track each
              other in the short run but better in the long run, could
              you provide an estimate for the duration at which the
              behavior will track better? My previous email had stated
              how in a 1 second interval I was experiencing around a
              ~300 nanosecond drift. However, in other samples I had
              taken spanning upto 30 seconds, this drift seemed to
              worsen upto ~15-17 microseconds. =46rom your email regarding
              how much the 10 MHz deviates during the short run as well
              as its long term behavior I=E2=80=99m very sure I must be doin=
g
              something wrong in my code setup.</font></div>
          <div style=3D"font-family:Helvetica;font-size:12px"><font color=3D=
"#000000"><br>
            </font></div>
          <div style=3D"font-family:Helvetica;font-size:12px"><font color=3D=
"#000000">I have provided some code sections of how
              I am attempting to synchronize the time. I start this
              script at roughly the same time (within about a couple of
              seconds) on both USRPs, and they begin to initialize
              settings such as bandwidth and center frequency. I then
              have them wait to start collection at the nearest rounded
              up 10 second time multiple of GPS time in seconds, since
              the initialization can take varying time for both USRPs to
              initialize. I also attached the full code to this email.</font=
></div>
          <div style=3D"font-family:Helvetica;font-size:12px"><font color=3D=
"#000000"><br>
            </font></div>
          <b style=3D"font-family:Helvetica;font-size:12px"><font color=3D"#=
000000"></font></b><br>
        </div>
      </div>
    </blockquote>
    I don't immediately see anything wrong with your code, but of
    course, this code is just recording samples, which you are
    presumably<br>
    &nbsp; cross-correlating in an "offline" manner post-facto?<br>
    <br>
    Something you might try is to use integer-N tuning, which may result
    in a more mutually-coherent LO setting across your two<br>
    &nbsp; synthesizers:<br>
    <br>
    <font face=3D"monospace">tune_req.args =3D <a class=3D"code" href=3D"htt=
ps://files.ettus.com/manual/classuhd_1_1device__addr__t.html">uhd::device_ad=
dr_t</a>(<span class=3D"stringliteral">"mode_n=3Dinteger"</span>);</font><br=
>
    <br>
    Also, you log the time when the recording is expected to take
    place--are these values actually the same in the two instances?<br>
    <br>
    What sample rate are you using?&nbsp; How much data are you recording?<b=
r>
    <br>
    Is this code ever triggered?<br>
    <br>
    <font face=3D"monospace">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; if (time_=
tmp &gt; 0.000001)<br>
      &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; {<br>
      &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; std::cout &lt=
;&lt; boost::format("XX %d Get Time of
      USRP %f\n") % f % num_dropped_samps;<br>
      &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; }</font><br>
 =20

</div></blockquote></div></body></html>=

--Apple-Mail-D8914F37-86E2-4C2D-9D9F-D593A0F10D13--


--===============1260806900869884600==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1260806900869884600==--

