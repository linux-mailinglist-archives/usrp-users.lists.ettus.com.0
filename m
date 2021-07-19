Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 245383CEE10
	for <lists+usrp-users@lfdr.de>; Mon, 19 Jul 2021 23:20:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D57F13845A3
	for <lists+usrp-users@lfdr.de>; Mon, 19 Jul 2021 17:20:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HG+WHbcn";
	dkim-atps=neutral
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 0E647384595
	for <USRP-users@lists.ettus.com>; Mon, 19 Jul 2021 17:19:51 -0400 (EDT)
Received: by mail-qk1-f173.google.com with SMTP id j184so18159601qkd.6
        for <USRP-users@lists.ettus.com>; Mon, 19 Jul 2021 14:19:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=FbGEaQo/yHieRwqsOdzc7xsMu5LfM7aZdwTWdr037gQ=;
        b=HG+WHbcnNiiRIXblLolBmzo3nEX4ZYikrE/Bf9Mtvz3d240uwTW5OESDGC2zCk2Xwv
         oHwLtz9NPZ1/qjhuPqAGU1RwO74Cl3wRIaNDYs8GNNxuL6TvGOfO3G9H2jTnAn5loyNV
         gGEv1Fyzrb/EgAV4aj38dMmMkGXophIL2VJlQ+LoujTkosNa5TFsnHSxliTFbYS9ehvI
         laTYcXcl/13nbXIgGOLaO0PQtDp/f45Lbl94nBzU9JO+p67bL1U/EIfs73KCdXXhlw07
         rCJjk3EZNP66PBw80xUg6Xno8aOFedzm+06vcIHZkaTX30xTz01KMvXOGZm9g+47Gv04
         LLog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=FbGEaQo/yHieRwqsOdzc7xsMu5LfM7aZdwTWdr037gQ=;
        b=CX+iEIeMyMpT7Bl0+hD62y19D/CGFRd1Say95O4QV4pRxavN6LULQLa15oa85m+bvQ
         khPkDUo7S0azMTe+iRpV+SkmdBcn82QQuFi/Q69LqKAm1+c9Fpxp1MSs5cNxFi0JIcqn
         ry3ZA8oHeb7uRrlrkN+m22VbMaG1RGnXQLQEJXPV6FZkLVDQsRVo6IFSiMV6OXT34vG0
         qnjbXnDyP9B15Pk43rh70qxn0k+tnZZ06sdkRmRSxAukq/yGFYaDdT1rcnmJdG9eJDQj
         ainTLO98l95vflL2Rne+qf8WJAcNf9xc3fs64hSoF9wm7bWoT3lPOGww85Z3b24cr/0l
         obfA==
X-Gm-Message-State: AOAM530b3C81xQLx6dwWRidzjd/ZzLrPHenXKi68cOEce9ftB7aiwOf1
	w0HEEJpdxIVtCN/Q8wALLJ4=
X-Google-Smtp-Source: ABdhPJwQngATg6BL3JL4nSSV+6bHM2B5s9qq0YNBOQj7jTQ0Qx1i0iP2cWe8F9xcIcGEHhcONAEDDw==
X-Received: by 2002:a37:4393:: with SMTP id q141mr25302356qka.273.1626729591343;
        Mon, 19 Jul 2021 14:19:51 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id h10sm8522497qka.83.2021.07.19.14.19.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jul 2021 14:19:50 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 19 Jul 2021 17:19:50 -0400
Message-Id: <2CF175AC-4DFF-4C28-A91E-0F4A83722014@gmail.com>
References: <d03e8311-2313-2b68-72d1-3e6a2fa4d547@comcast.net>
In-Reply-To: <d03e8311-2313-2b68-72d1-3e6a2fa4d547@comcast.net>
To: Ron Economos <w6rz@comcast.net>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: GGT2DNEMQJ3OSM22VS3KFBMYB5VBVXDV
X-Message-ID-Hash: GGT2DNEMQJ3OSM22VS3KFBMYB5VBVXDV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Is UHD supposed to keep running after detecting overrun?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GGT2DNEMQJ3OSM22VS3KFBMYB5VBVXDV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6478326152330100869=="


--===============6478326152330100869==
Content-Type: multipart/alternative; boundary=Apple-Mail-2A487E12-1406-4020-97AE-664904EC661F
Content-Transfer-Encoding: 7bit


--Apple-Mail-2A487E12-1406-4020-97AE-664904EC661F
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Ron is that on a B2xx or something else?

Sent from my iPhone

> On Jul 19, 2021, at 4:27 PM, Ron Economos <w6rz@comcast.net> wrote:
>=20
> =EF=BB=BF
> I haven't tried the latest UHD version. However, I do have UHD 4.0.0.0 run=
ning without stopping with just the patch from https://github.com/EttusResea=
rch/uhd/commit/70e1f0f0c697d6522e3a87e2de93e34e375decb4
>=20
> Ron
>=20
>> On 7/19/21 8:58 AM, wan wrote:
>> Ron,
>> I didnt find an open issue related to this at first, but after your respo=
nse I found it in the closed issues (https://github.com/EttusResearch/uhd/is=
sues/380). The fix was committed in Oct 2020. However, I tried master (UHD_4=
.1.0.0-13-g240c7fd), v4.1.0.0 and v4.1.0.1, and I have the problem in all th=
ree versions. Is it working for you in any of these versions?
>>=20
>> Mike,
>> Thanks for joining the discussion. I'm also seeing the ERROR_CODE_TIMEOUT=
 problem with benchmark_rate. However, it usually happens when I set the sam=
ple rate to 50 Msps or higher, and run for more than 30 seconds. At 2 to 5 M=
Sps, I dont have any errors or overruns. I didn't mention it before because I=
 figured it's normal since I'm running at a high sample rate. However, on v3=
.15.0.0, I can consistently stream at 50 Msps without getting any timeouts o=
r overruns.
>>=20
>>=20
>>=20
>> On Mon, 19 Jul 2021 at 11:34, McNulty, Mike (Assoc) via USRP-users <usrp-=
users@lists.ettus.com> wrote:
>>> Hello,
>>>=20
>>> =20
>>>=20
>>> I don=E2=80=99t want to interrupt the thread but I actually joined the m=
ailing list for this issue. I just upgraded to UHD 4.1.0.1 and I=E2=80=99m e=
xperiencing the same timeout issue.
>>>=20
>>> =20
>>>=20
>>> <image004.png>
>>>=20
>>> =20
>>>=20
>>> This is a snip from a ./lib/uhd/examples/benchmark run at 5 Msps.
>>>=20
>>> =20
>>>=20
>>> <image005.png>
>>>=20
>>> =20
>>>=20
>>> It looks to me as soon as it receives the first overflow the execution t=
erminates.  Somewhere between 2.0 and 5.0 Msps my system drops samples
>>>=20
>>> =20
>>>=20
>>> <image006.png>
>>>=20
>>> =20
>>>=20
>>> Thanks for everything everyone does! I wanted to just add my experience t=
o help with development.
>>>=20
>>> =20
>>>=20
>>> Mike
>>>=20
>>> =20
>>>=20
>>> =20
>>>=20
>>> =20
>>>=20
>>> From: Ron Economos <w6rz@comcast.net>=20
>>> Sent: Monday, July 19, 2021 1:45 AM
>>> To: usrp-users@lists.ettus.com
>>> Subject: [USRP-users] Re: Is UHD supposed to keep running after detectin=
g overrun?
>>>=20
>>> =20
>>>=20
>>> It is a bug in UHD v4.0.0.0, but it should be fixed in UHD v4.1.0.1 (and=
 UHD v4.1.0.0).
>>>=20
>>> Ron
>>>=20
>>> On 7/18/21 9:37 PM, wan wrote:
>>>=20
>>> Hello,
>>>=20
>>> When UHD detects an overrun, is it supposed to keep going or freeze? I'm=
 using an USRP B200mini. I tested it with the rx_ascii_dft and the uhd_fft G=
RC example using different versions of UHD on Ubuntu 20.04. When using UHD 3=
.15.0, an overrun is detected, the application keeps running and prints a se=
quence of "O" to the terminal. However, when I use UHD 4.0.0.0 and 4.1.0.1, a=
s soon as an overrun is detected, the ascii or gnuradio QT displays stop upd=
ating.
>>>=20
>>> Regards,
>>>=20
>>> Wan
>>>=20
>>>=20
>>>=20
>>>=20
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-2A487E12-1406-4020-97AE-664904EC661F
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Ron is that on a B2xx or something else?<br=
><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockqu=
ote type=3D"cite">On Jul 19, 2021, at 4:27 PM, Ron Economos &lt;w6rz@comcast=
.net&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=
=3D"ltr">=EF=BB=BF
 =20
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"=
>
 =20
 =20
    <p>I haven't tried the latest UHD version. However, I do have UHD
      4.0.0.0 running without stopping with just the patch from
<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/EttusResearch/=
uhd/commit/70e1f0f0c697d6522e3a87e2de93e34e375decb4">https://github.com/Ettu=
sResearch/uhd/commit/70e1f0f0c697d6522e3a87e2de93e34e375decb4</a></p>
    <p>Ron<br>
    </p>
    <div class=3D"moz-cite-prefix">On 7/19/21 8:58 AM, wan wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:CABNzRJ=3DimMO-HNdXvOPyskT1oJ6aS7H=
wR9NC7EGnmOoOWph8XA@mail.gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-=
8">
      <div dir=3D"ltr">
        <div>
          <div>Ron,<br>
            I didnt find an open issue related to this at first, but
            after your response I found it in the closed issues (<a href=3D"=
https://github.com/EttusResearch/uhd/issues/380" target=3D"_blank" moz-do-no=
t-send=3D"true">https://github.com/EttusResearch/uhd/issues/380</a>).
            The fix was committed in Oct 2020. However, I tried master
            (UHD_4.1.0.0-13-g240c7fd), v4.1.0.0 and v4.1.0.1, and I have
            the problem in all three versions. Is it working for you in
            any of these versions?<br>
            <br>
          </div>
          Mike,<br>
        </div>
        Thanks for joining the discussion. I'm also seeing the
        ERROR_CODE_TIMEOUT problem with benchmark_rate. However, it
        usually happens when I set the sample rate to 50 Msps or higher,
        and run for more than 30 seconds. At 2 to 5 MSps, I dont have
        any errors or overruns. I didn't mention it before because I
        figured it's normal since I'm running at a high sample rate.
        However, on v3.15.0.0, I can consistently stream at 50 Msps
        without getting any timeouts or overruns.<br>
        <br>
        <br>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, 19 Jul 2021 at 11:34,
          McNulty, Mike (Assoc) via USRP-users &lt;<a href=3D"mailto:usrp-us=
ers@lists.ettus.com" moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a>=
&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div style=3D"overflow-wrap: break-word;" lang=3D"EN-US">
            <div class=3D"gmail-m_-2842874153423426516WordSection1">
              <p class=3D"MsoNormal">Hello,</p>
              <p class=3D"MsoNormal">&nbsp;</p>
              <p class=3D"MsoNormal">I don=E2=80=99t want to interrupt the t=
hread
                but I actually joined the mailing list for this issue. I
                just upgraded to UHD 4.1.0.1 and I=E2=80=99m experiencing th=
e
                same timeout issue.
              </p>
              <p class=3D"MsoNormal">&nbsp;</p>
              <p class=3D"MsoNormal"><div>&lt;image004.png&gt;</div></p>
              <p class=3D"MsoNormal">&nbsp;</p>
              <p class=3D"MsoNormal">This is a snip from a
                ./lib/uhd/examples/benchmark run at 5 Msps.</p>
              <p class=3D"MsoNormal">&nbsp;</p>
              <p class=3D"MsoNormal"><div>&lt;image005.png&gt;</div></p>
              <p class=3D"MsoNormal">&nbsp;</p>
              <p class=3D"MsoNormal">It looks to me as soon as it receives
                the first overflow the execution terminates.&nbsp; Somewhere=

                between 2.0 and 5.0 Msps my system drops samples</p>
              <p class=3D"MsoNormal">&nbsp;</p>
              <p class=3D"MsoNormal"><div>&lt;image006.png&gt;</div></p>
              <p class=3D"MsoNormal">&nbsp;</p>
              <p class=3D"MsoNormal">Thanks for everything everyone does!
                I wanted to just add my experience to help with
                development.
              </p>
              <p class=3D"MsoNormal">&nbsp;</p>
              <p class=3D"MsoNormal">Mike</p>
              <p class=3D"MsoNormal">&nbsp;</p>
              <p class=3D"MsoNormal">&nbsp;</p>
              <p class=3D"MsoNormal">&nbsp;</p>
              <div>
                <div style=3D"border-color:rgb(225,225,225) currentcolor
                  currentcolor;border-style:solid none
                  none;border-width:1pt medium medium;padding:3pt 0in
                  0in">
                  <p class=3D"MsoNormal"><b>From:</b> Ron Economos &lt;<a hr=
ef=3D"mailto:w6rz@comcast.net" target=3D"_blank" moz-do-not-send=3D"true">w6=
rz@comcast.net</a>&gt; <br>
                    <b>Sent:</b> Monday, July 19, 2021 1:45 AM<br>
                    <b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com"=
 target=3D"_blank" moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a><b=
r>
                    <b>Subject:</b> [USRP-users] Re: Is UHD supposed to
                    keep running after detecting overrun?</p>
                </div>
              </div>
              <p class=3D"MsoNormal">&nbsp;</p>
              <p>It is a bug in UHD v4.0.0.0, but it should be fixed in
                UHD v4.1.0.1 (and UHD v4.1.0.0).</p>
              <p>Ron</p>
              <div>
                <p class=3D"MsoNormal">On 7/18/21 9:37 PM, wan wrote:</p>
              </div>
              <blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
                <div>
                  <div>
                    <div>
                      <p class=3D"MsoNormal" style=3D"margin-bottom:12pt">He=
llo,</p>
                    </div>
                    <p class=3D"MsoNormal" style=3D"margin-bottom:12pt">When=

                      UHD detects an overrun, is it supposed to keep
                      going or freeze? I'm using an USRP B200mini. I
                      tested it with the rx_ascii_dft and the uhd_fft
                      GRC example using different versions of UHD on
                      Ubuntu 20.04. When using UHD 3.15.0, an overrun is
                      detected, the application keeps running and prints
                      a sequence of "O" to the terminal. However, when I
                      use UHD 4.0.0.0 and 4.1.0.1, as soon as an overrun
                      is detected, the ascii or gnuradio QT displays
                      stop updating.</p>
                  </div>
                  <div>
                    <p class=3D"MsoNormal" style=3D"margin-bottom:12pt">Rega=
rds,</p>
                  </div>
                  <div>
                    <p class=3D"MsoNormal">Wan</p>
                  </div>
                </div>
                <p class=3D"MsoNormal"><br>
                  <br>
                </p>
                <pre>_______________________________________________</pre>
                <pre>USRP-users mailing list -- <a href=3D"mailto:usrp-users=
@lists.ettus.com" target=3D"_blank" moz-do-not-send=3D"true">usrp-users@list=
s.ettus.com</a></pre>
                <pre>To unsubscribe send an email to <a href=3D"mailto:usrp-=
users-leave@lists.ettus.com" target=3D"_blank" moz-do-not-send=3D"true">usrp=
-users-leave@lists.ettus.com</a></pre>
              </blockquote>
            </div>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettu=
s.com" target=3D"_blank" moz-do-not-send=3D"true">usrp-users@lists.ettus.com=
</a><br>
          To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave=
@lists.ettus.com" target=3D"_blank" moz-do-not-send=3D"true">usrp-users-leav=
e@lists.ettus.com</a><br>
        </blockquote>
      </div>
    </blockquote>
 =20

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-2A487E12-1406-4020-97AE-664904EC661F--

--===============6478326152330100869==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6478326152330100869==--
