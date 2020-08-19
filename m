Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5DE24A3A4
	for <lists+usrp-users@lfdr.de>; Wed, 19 Aug 2020 17:57:58 +0200 (CEST)
Received: from [::1] (port=59582 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k8QTN-0007tJ-8F; Wed, 19 Aug 2020 11:57:57 -0400
Received: from mail-il1-f176.google.com ([209.85.166.176]:42806)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <emoges@uncc.edu>) id 1k8QTJ-0007Zo-0B
 for usrp-users@lists.ettus.com; Wed, 19 Aug 2020 11:57:53 -0400
Received: by mail-il1-f176.google.com with SMTP id t13so21036956ile.9
 for <usrp-users@lists.ettus.com>; Wed, 19 Aug 2020 08:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uncc.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1mHknktO1rU7pg9l2CVptRh8HM0ElvCCQJKQj7dOVjk=;
 b=EqAr7zYcAJ5ursyk2DsNNSBaSLrOIYwHYoqHIGI8kcNEv/C5AgfNdVdYJfxS6WkYz8
 syK3VaYtMzNEWtXBgIceoXbJJM1dTlplEZtGI4cXfZR3QEsmCAd4wumBaPhg8fbUC2UJ
 5vXsgRThI30E/Qzuoh3TMgxtn7lSEbUPyZZb4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1mHknktO1rU7pg9l2CVptRh8HM0ElvCCQJKQj7dOVjk=;
 b=ZqYlWOMfRm514ptfQ0S3Y3bk1vKpyXjMIZBwTB9MqvLziOmEO8y7m2SGrCD2xW43d1
 dGawhbIt7hi/noA9PvP3kyr3tLiXNhahtaJuPtL24x6/KR43FLw4UXN7LofEpxCxFkh9
 vsyR8vZq+kUlENFu+FA4BD7QhJD9dwgiHPCMb7ltfY3fZAbcGHToMfLN3WVceleIkf8v
 7aLBuLkbPVSJzmMUeROn+yRCgGQ014ovp+Uo7aJm5WdQn573ZTJsbp20/Bhna0i3uWqe
 sGSBdomJm1LxDBGS3py/04u6GNNP7DlaeMsCwlkqMOWfr4fQnc1bazHQMQXIXCElUXLh
 +sdQ==
X-Gm-Message-State: AOAM530hgBF4GZ8bbxY19Ad3rirDfhgka1OyLfZJeHjNB01cCORCrduH
 220A410ooGutJSCBFdFm5UWsL5sfmz85UwwTKmOB2Q==
X-Google-Smtp-Source: ABdhPJyIZbmIHGytD8P8AgMyWeo4pV/M+jV4mT6S3Ud1Qk/BxVbNm8ZqsN6DEMJIcG2br59lA6JWxzkzNCctXP/Pbyo=
X-Received: by 2002:a92:ba02:: with SMTP id o2mr22336737ili.3.1597852632191;
 Wed, 19 Aug 2020 08:57:12 -0700 (PDT)
MIME-Version: 1.0
References: <CANwgjNqWApsiG2Nmgxr3K_KBr-XPKXK2t9FgAqkPgidXV3MP0w@mail.gmail.com>
 <CANwgjNpE_4RyMsXqVx3ObWJEB2ysogRbNQrx3k-ZOKSgRW_E8g@mail.gmail.com>
 <5F3D4697.8070503@gmail.com>
 <CANwgjNqTaAV=Ts3jgEhv5asqReKVU-obj+ut=dqdbqFywyS8Ow@mail.gmail.com>
 <5F3D4822.5040703@gmail.com>
 <CANwgjNq2UPY--GC=QB5wtoouR4fCqNxfJc3Nus0z35291Kmw3A@mail.gmail.com>
 <5F3D498E.40303@gmail.com>
In-Reply-To: <5F3D498E.40303@gmail.com>
Date: Wed, 19 Aug 2020 11:57:00 -0400
Message-ID: <CANwgjNpA0LvSwZQ2n2LqPeC-TBH-svPnjfvf-bD1JU6eznWAhg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Fwd: Benchmark_rate.py error
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
From: Ephraim Moges via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ephraim Moges <emoges@uncc.edu>
Content-Type: multipart/mixed; boundary="===============0650134880585430467=="
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

--===============0650134880585430467==
Content-Type: multipart/alternative; boundary="0000000000008bb3a905ad3d0e5e"

--0000000000008bb3a905ad3d0e5e
Content-Type: text/plain; charset="UTF-8"

Will this also allow for me to call "import uhd" in my python scripts?

On Wed, Aug 19, 2020, 11:47 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 08/19/2020 11:43 AM, Ephraim Moges wrote:
>
> I tried to install it on I ubuntu 20 or 18 but ran into many issues. I can
> reinstall Ubuntu 20 but I'm not sure what steps you would recommend to
> follow to allow for an easy installation.
>
> https://files.ettus.com/manual/page_install.html#install_linux_pkgmgr
>
> Refer to the "using your package manager" section.
>
>
>
>
>
>
> On Wed, Aug 19, 2020, 11:41 AM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 08/19/2020 11:36 AM, Ephraim Moges wrote:
>>
>> Ubuntu 16 and I used cmake instructions
>>
>> https://files.ettus.com/manual/page_build_guide.html
>>
>> OK, so when CMake ran, did it say that it was turning off various
>> features, due to missing dependencies.
>>
>> Also, Ubuntu 16 is insanely, outrageously, out-of-date, and I'm surprised
>> that you could build current UHD AT ALL on it.
>>
>> Please consider upgrading to a more-recent OS version.
>>
>> In fact, on a newer Ubuntu (like the latest), you shouldn't need to build
>> UHD at all--it's already packaged and can be installed
>>   using the package manager.
>>
>>
>>
>> On Wed, Aug 19, 2020, 11:35 AM Marcus D. Leech via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> On 08/19/2020 11:27 AM, Ephraim Moges via USRP-users wrote:
>>>
>>> Good Morning,
>>>
>>> I am having a problem running the python benchmark_rate.py. The error
>>> message I am receiving is in the image attached "the module uhd has no
>>> attribute 'usrp'". My installation indicated everything was good when I ran
>>> a make test, so I am not sure if I need to be in a specific folder so that
>>> it can find the attribute or what.
>>>
>>> Sincerely,
>>>
>>> Moges
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>> What OS?   How exactly did you install UHD?
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>>
>

--0000000000008bb3a905ad3d0e5e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Will this also allow for me to call &quot;import uhd&quot=
; in my python scripts?<br></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Wed, Aug 19, 2020, 11:47 AM Marcus D. Leech &=
lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div>On 08/19/2020 11:43 AM, Ephraim Moges
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"auto">I tried to install it on I ubuntu 20 or 18 but ran
        into many issues. I can reinstall Ubuntu 20 but I&#39;m not sure
        what steps you would recommend to follow to allow for an easy
        installation.</div>
    </blockquote>
<a href=3D"https://files.ettus.com/manual/page_install.html#install_linux_p=
kgmgr" target=3D"_blank" rel=3D"noreferrer">https://files.ettus.com/manual/=
page_install.html#install_linux_pkgmgr</a><br>
    <br>
    Refer to the &quot;using your package manager&quot; section.<br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 19, 2020, 11:41 A=
M
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" ta=
rget=3D"_blank" rel=3D"noreferrer">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">
          <div bgcolor=3D"#FFFFFF" text=3D"#000000">
            <div>On 08/19/2020 11:36 AM, Ephraim Moges wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"auto">Ubuntu 16 and I used cmake instructions
                <div dir=3D"auto"><br>
                </div>
                <div dir=3D"auto"><a href=3D"https://files.ettus.com/manual=
/page_build_guide.html" rel=3D"noreferrer noreferrer" target=3D"_blank">htt=
ps://files.ettus.com/manual/page_build_guide.html</a><br>
                </div>
              </div>
            </blockquote>
            OK, so when CMake ran, did it say that it was turning off
            various features, due to missing dependencies.<br>
            <br>
            Also, Ubuntu 16 is insanely, outrageously, out-of-date, and
            I&#39;m surprised that you could build current UHD AT ALL on it=
.<br>
            <br>
            Please consider upgrading to a more-recent OS version.<br>
            <br>
            In fact, on a newer Ubuntu (like the latest), you shouldn&#39;t
            need to build UHD at all--it&#39;s already packaged and can be
            installed<br>
            =C2=A0 using the package manager.<br>
            <br>
            <br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 19, 2020,
                  11:35 AM Marcus D. Leech via USRP-users &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com" rel=3D"noreferrer noreferrer" target=3D"_b=
lank">usrp-users@lists.ettus.com</a>&gt;

                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex">
                  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
                    <div>On 08/19/2020 11:27 AM, Ephraim Moges via
                      USRP-users wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"auto">
                        <div class=3D"gmail_quote" dir=3D"auto">
                          <div dir=3D"ltr" class=3D"gmail_attr">Good
                            Morning,<br>
                          </div>
                          <div dir=3D"auto">
                            <div dir=3D"auto"><br>
                            </div>
                            <div dir=3D"auto">I am having a problem
                              running the python benchmark_rate.py. The
                              error message I am receiving is in the
                              image attached &quot;the module uhd has no
                              attribute &#39;usrp&#39;&quot;. My installati=
on
                              indicated everything was good when I ran a
                              make test, so I am not sure if I need to
                              be in a specific folder so that it can
                              find the attribute or what.<br>
                              <br>
                              <div data-smartmail=3D"gmail_signature" dir=
=3D"auto">Sincerely,<br>
                                <br>
                              </div>
                              <div data-smartmail=3D"gmail_signature" dir=
=3D"auto">Moges<br>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <br>
                      <fieldset></fieldset>
                      <br>
                      <pre>_______________________________________________
USRP-users mailing list
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer noreferrer =
noreferrer" target=3D"_blank">USRP-users@lists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">http://lists=
.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
                    </blockquote>
                    What OS?=C2=A0=C2=A0 How exactly did you install UHD?=
=C2=A0 <br>
                    <br>
                    <br>
                  </div>
                  _______________________________________________<br>
                  USRP-users mailing list<br>
                  <a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"nore=
ferrer noreferrer noreferrer" target=3D"_blank">USRP-users@lists.ettus.com<=
/a><br>
                  <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-u=
sers_lists.ettus.com" rel=3D"noreferrer noreferrer noreferrer noreferrer" t=
arget=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.e=
ttus.com</a><br>
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--0000000000008bb3a905ad3d0e5e--


--===============0650134880585430467==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0650134880585430467==--

