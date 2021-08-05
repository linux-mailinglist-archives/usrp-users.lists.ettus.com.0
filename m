Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4473E14AE
	for <lists+usrp-users@lfdr.de>; Thu,  5 Aug 2021 14:26:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A51D2384080
	for <lists+usrp-users@lfdr.de>; Thu,  5 Aug 2021 08:26:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YhAq35XL";
	dkim-atps=neutral
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 934133837C6
	for <usrp-users@lists.ettus.com>; Thu,  5 Aug 2021 08:25:23 -0400 (EDT)
Received: by mail-qk1-f180.google.com with SMTP id x3so6002545qkl.6
        for <usrp-users@lists.ettus.com>; Thu, 05 Aug 2021 05:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=ZupxheU+O6Sxz0vf8Ld8MHBQYHK4QGNLZdZp3qotmSE=;
        b=YhAq35XLOa7WeIJYyAaBC00gnwYcZbrrPsXUXSCM+UDuBlQIf+ugCh8hoEzeSVBcfe
         dlWl5anqzURf1G+SPURqrXQhCUxHG43Okx92oKE5lfYtBW/+FbKshVA8Z0ayuMlcuKII
         jM+AZsaec+awMxI1RAdX47lSmY4fMxZayFBKZpwFLslyNPR03BA2lSsgQfBuiaOgN2od
         sbKWrrn1VQnT50sdYPdrsedBERv4RJY+tOXKlML3zQwdeUak9Y8+Tn1y0Uh7p4f5KmYJ
         89OIoWxm/n1A4lXW/siNqEt11yhe/awmEEc+VMWJ2UzQ0TBGJrA4nhq8wNlq726Vdadb
         Wk7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=ZupxheU+O6Sxz0vf8Ld8MHBQYHK4QGNLZdZp3qotmSE=;
        b=In7omxDJvhjkPdzae+FYt+t/KVjdmbRnDqgCaBwjK7n24oRyjrLUVpmtxE4RI4RNNT
         Qmuk2yLZ+r/3h8F4maZCagUzMOqrKJIkSMDQ7W8nrwOO7LsXmpj49YWgBgTMYOuUdI14
         ZBgQ7LvmeRp66HBSBvvfwJfl3WL8FuqfhSn7iSZ5rbRCPHOXqv9tb1qm0iq9eAl9vpBy
         oNqrrZLZu5kZcCCwWf4Au1uP9hfssIjzX7ZcUINNtpWf7vhKotLZkuB2sRGTRCpSMwgn
         TVHkXs9OBl+ovn7WlsyaW/+b0SZKB/cerNYYXmvRonSXTPwxWVeH6U2I1HcCg+hkAYX4
         Axpg==
X-Gm-Message-State: AOAM5330/SiUMl8lBjmy3ahgZs2pNZiZoEuUpPPpbBjjmC20UCyC4/tQ
	zTQM+21yKEqLOWp3UP8V0Q5oQPcdYJs=
X-Google-Smtp-Source: ABdhPJwKdh473uIrdjefra8a7Kc3xLd/Pwvy5EfPoO3tawK5JvMcb7IMRzA1GK1c99W/4chm08LB4Q==
X-Received: by 2002:a37:9142:: with SMTP id t63mr4431321qkd.59.1628166322421;
        Thu, 05 Aug 2021 05:25:22 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id s12sm2215458qtc.72.2021.08.05.05.25.21
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Aug 2021 05:25:21 -0700 (PDT)
Message-ID: <610BD8B0.4000304@gmail.com>
Date: Thu, 05 Aug 2021 08:25:20 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Daniel Ozer <danielozer22@gmail.com>,
 "Discuss-gnuradio@gnu.org" <Discuss-gnuradio@gnu.org>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CAE_Rk57FWHzJCE2bT+sf=URPKg+RpS3et46v8rHCUrrPKduT4w@mail.gmail.com> <6107DDD9.6070503@gmail.com> <CAE_Rk556qi1gaQg5bMQ2n2SMgWMJk34cbKVLqndeCGftWFkWCg@mail.gmail.com>
In-Reply-To: <CAE_Rk556qi1gaQg5bMQ2n2SMgWMJk34cbKVLqndeCGftWFkWCg@mail.gmail.com>
Message-ID-Hash: SORUDVIA4OLKLMTXMK26MG3EPIXR7ME7
X-Message-ID-Hash: SORUDVIA4OLKLMTXMK26MG3EPIXR7ME7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Question on the usrp
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SORUDVIA4OLKLMTXMK26MG3EPIXR7ME7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7874518851772514784=="

This is a multi-part message in MIME format.
--===============7874518851772514784==
Content-Type: multipart/alternative;
 boundary="------------090105000509080705090705"

This is a multi-part message in MIME format.
--------------090105000509080705090705
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/05/2021 07:45 AM, Daniel Ozer wrote:
> Hi about this question im using gnuradio and its the one who call the 
> recv function in the background and i cant access that part of the 
> code. Do you know a way I can get the interrupt within a block of 
> gnuradio while I'm not the one who call the recv function
>
>     3. While using high sample rate 50M+ i saw that once in a while 
>     'D' is written to the terminal . How can get an interrupt that
>     indicates that a packet has lost ? Is it one packet every time or
>     only some of the packet not arriving ? Is there a way to make sure
>     that packets won't lost ?
>
> The recv() call returns metadata that includes an error code.  See:
>
> https://files.ettus.com/manual/structuhd_1_1rx__metadata__t.html
>
In which case, you want to look at the tags produced by the gr-uhd 
interface:

https://www.gnuradio.org/doc/doxygen-3.7.2/group__uhd__blk.html

Whenever an overrun type event happens, gr-uhd inserts a fresh timestamp 
into the tag stream associated with the sample stream. That allows
   you to:

   (A) Infer that an over-run type event occurred
   (B) Know how many samples were dropped--by computing the difference 
between what the expected timestamp should be and what
         it actually is in the timestamp tag.

I've cross-posted to discuss-gnuradio, where there's a bigger audience 
for Gnu Radio questions.






--------------090105000509080705090705
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 08/05/2021 07:45 AM, Daniel Ozer
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CAE_Rk556qi1gaQg5bMQ2n2SMgWMJk34cbKVLqndeCGftWFkWCg@mail.gmai=
l.com"
      type=3D"cite">
      <div dir=3D"auto">Hi about this question im using gnuradio and its
        the one who call the recv function in the background and i cant
        access that part of the code. Do you know a way I can get the
        interrupt within a block of gnuradio while I'm not the one who
        call the recv function
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">
          <div style=3D"font-size:13.696px;margin:0px 16px" dir=3D"auto">
            <div>
              <div style=3D"width:328px;margin:16px 0px">
                <div>
                  <div>
                    <div style=3D"color:rgb(80,0,80)">
                      <blockquote
                        style=3D"font-family:sans-serif;font-size:12.8px;=
margin-left:0.8ex!important;margin-right:0px!important;border-left:1px
                        solid
                        rgb(204,204,204)!important;padding-left:1ex!impor=
tant">
                        <div dir=3D"auto">
                          <div dir=3D"auto">3. While using high sample
                            rate 50M+ i saw that once in a while=C2=A0 'D=
' is
                            written to the terminal . How can get an
                            interrupt that indicates that a packet has
                            lost ? Is it one packet every time or only
                            some of the packet not arriving ? Is there a
                            way to make sure that packets won't lost ?</d=
iv>
                        </div>
                      </blockquote>
                    </div>
                    The recv() call returns metadata that includes an
                    error code.=C2=A0 See:<br>
                    <br>
                    <a moz-do-not-send=3D"true"
                      href=3D"https://files.ettus.com/manual/structuhd_1_=
1rx__metadata__t.html"
style=3D"text-decoration-line:none;color:rgb(66,133,244)">https://files.e=
ttus.com/manual/structuhd_1_1rx__metadata__t.html</a><br>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
    </blockquote>
    In which case, you want to look at the tags produced by the gr-uhd
    interface:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://www.gnuradio.org/d=
oc/doxygen-3.7.2/group__uhd__blk.html">https://www.gnuradio.org/doc/doxyg=
en-3.7.2/group__uhd__blk.html</a><br>
    <br>
    Whenever an overrun type event happens, gr-uhd inserts a fresh
    timestamp into the tag stream associated with the sample stream.=C2=A0
    That allows<br>
    =C2=A0 you to:<br>
    <br>
    =C2=A0 (A) Infer that an over-run type event occurred<br>
    =C2=A0 (B) Know how many samples were dropped--by computing the
    difference between what the expected timestamp should be and what<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 it actually is in the time=
stamp tag.<br>
    <br>
    I've cross-posted to discuss-gnuradio, where there's a bigger
    audience for Gnu Radio questions.<br>
    <br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------090105000509080705090705--

--===============7874518851772514784==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7874518851772514784==--
