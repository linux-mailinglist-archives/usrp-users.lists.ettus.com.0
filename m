Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 361EC24A3CF
	for <lists+usrp-users@lfdr.de>; Wed, 19 Aug 2020 18:13:45 +0200 (CEST)
Received: from [::1] (port=59934 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k8Qid-0005G3-8T; Wed, 19 Aug 2020 12:13:43 -0400
Received: from mail-qk1-f182.google.com ([209.85.222.182]:46488)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k8QiZ-00050E-Hb
 for USRP-users@lists.ettus.com; Wed, 19 Aug 2020 12:13:39 -0400
Received: by mail-qk1-f182.google.com with SMTP id d14so22070058qke.13
 for <USRP-users@lists.ettus.com>; Wed, 19 Aug 2020 09:13:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=ZiEOFkKuGzQnjdPEPheb01xt8eAPEJclf02SohLtAFg=;
 b=eA7EmKbW9sFT8J/KMd0nYwGa5dn9OgtgxQOPZC08AUHp3gAXvOefKkNuvsOKnhNZS4
 W7Qh6+PKbcVgqMBFyWi1bKi9qH+wPFHqWq+t7fzkVOF04DGvXZABv9vO8OUNcx7erwsI
 SsSGRCnss4mtyaaikM8ZAnSmPT2nAogLfLtjmBUt0gTj7nqRPnstnG379JIZXJqOIQ4f
 r0LvMcLQabuz1U/PrA3q+R3vov4LDDwfbsNHC6Pfw4BbGV9eSyoiifs12CabcxwUdOWJ
 WZghptrtnlhJVRNXUTn/uN0WqBNJ5vEIyvFT0u2tnKxN+Vrm37o6tGOgi2PSUobMD0Xj
 j3nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=ZiEOFkKuGzQnjdPEPheb01xt8eAPEJclf02SohLtAFg=;
 b=Kw2YAPbA9W7H2ioEBE4Lfpzr0SIlLAnd3gNmSAmQBEMoivVBCxxaBN+baONqK7thQU
 wdLSziW2gFp7AcFTkfRHGpVVvDIE2GbdCOZmsqo+gDvU8LdvRyg+6fMn6gJTdqa/c77y
 HqDqt0bHWcfApOV/gBVHil/z9HN23NAHxDDt1j/OikXHm0h4v2J2TP5vV61zYgkw5s09
 QTKFOsxruKYjui6Fchi2pD/4eO28jNYjQCVKVFTPTDzD/3AwVV2WcVER+4N5YfWcMrsQ
 aYYvmhln0oM6IXGC79OHSLRQHqfe0ZE5c0BDW+wCsDptucbCjMPQ0gHhjepTjtRO9nqb
 9wPg==
X-Gm-Message-State: AOAM533tibHnNc0VT/McHV5kWx2VxTQfjZi0k2b5RQGlfM4iPzHFvih8
 JiqyZqFJ88F3nozAbILvBgsozn/z8Cd5d0Vu
X-Google-Smtp-Source: ABdhPJziFeWrrGF5Ez/Q28KA6WkiY+dLAm5jXioH8FnGzpyrh6fYgMoRvi8P6CZq8xvMN2Uow2EYAA==
X-Received: by 2002:a37:9e91:: with SMTP id h139mr21583582qke.71.1597853578770; 
 Wed, 19 Aug 2020 09:12:58 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.gmail.com with ESMTPSA id x50sm29642654qtb.10.2020.08.19.09.12.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Aug 2020 09:12:58 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Wed, 19 Aug 2020 12:12:57 -0400
Message-Id: <E3083121-60B7-4A59-8626-8B0F59ECC01A@gmail.com>
References: <CANwgjNpA0LvSwZQ2n2LqPeC-TBH-svPnjfvf-bD1JU6eznWAhg@mail.gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <CANwgjNpA0LvSwZQ2n2LqPeC-TBH-svPnjfvf-bD1JU6eznWAhg@mail.gmail.com>
To: Ephraim Moges <emoges@uncc.edu>
X-Mailer: iPhone Mail (17G68)
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============7073274133358612551=="
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


--===============7073274133358612551==
Content-Type: multipart/alternative; boundary=Apple-Mail-FF821B99-9703-4262-A055-983FCA8D1163
Content-Transfer-Encoding: 7bit


--Apple-Mail-FF821B99-9703-4262-A055-983FCA8D1163
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

That=E2=80=99s a good question. I=E2=80=99m
Not sure if the packaging person for Ubuntu pays attention to this list=E2=80=
=94they would be able to definitively answer that.=20

The Python API may be a separate package.=20

I *think* the PPA provided by Ettus includes the Python API. Be careful abou=
t
Mixing the official packages with the PPA packages (and by inference bits an=
d pieces built from source).  I can confirm this later today.=20

Sent from my iPhone

> On Aug 19, 2020, at 11:57 AM, Ephraim Moges <emoges@uncc.edu> wrote:
>=20
> =EF=BB=BF
> Will this also allow for me to call "import uhd" in my python scripts?
>=20
>> On Wed, Aug 19, 2020, 11:47 AM Marcus D. Leech <patchvonbraun@gmail.com> w=
rote:
>> On 08/19/2020 11:43 AM, Ephraim Moges wrote:
>>> I tried to install it on I ubuntu 20 or 18 but ran into many issues. I c=
an reinstall Ubuntu 20 but I'm not sure what steps you would recommend to fo=
llow to allow for an easy installation.
>> https://files.ettus.com/manual/page_install.html#install_linux_pkgmgr
>>=20
>> Refer to the "using your package manager" section.
>>=20
>>=20
>>=20
>>=20
>>=20
>>>=20
>>> On Wed, Aug 19, 2020, 11:41 AM Marcus D. Leech <patchvonbraun@gmail.com>=
 wrote:
>>>>> On 08/19/2020 11:36 AM, Ephraim Moges wrote:
>>>>> Ubuntu 16 and I used cmake instructions
>>>>>=20
>>>>> https://files.ettus.com/manual/page_build_guide.html
>>>> OK, so when CMake ran, did it say that it was turning off various featu=
res, due to missing dependencies.
>>>>=20
>>>> Also, Ubuntu 16 is insanely, outrageously, out-of-date, and I'm surpris=
ed that you could build current UHD AT ALL on it.
>>>>=20
>>>> Please consider upgrading to a more-recent OS version.
>>>>=20
>>>> In fact, on a newer Ubuntu (like the latest), you shouldn't need to bui=
ld UHD at all--it's already packaged and can be installed
>>>>   using the package manager.
>>>>=20
>>>>=20
>>>>>=20
>>>>> On Wed, Aug 19, 2020, 11:35 AM Marcus D. Leech via USRP-users <usrp-us=
ers@lists.ettus.com> wrote:
>>>>>> On 08/19/2020 11:27 AM, Ephraim Moges via USRP-users wrote:
>>>>>>> Good Morning,
>>>>>>>=20
>>>>>>> I am having a problem running the python benchmark_rate.py. The erro=
r message I am receiving is in the image attached "the module uhd has no att=
ribute 'usrp'". My installation indicated everything was good when I ran a m=
ake test, so I am not sure if I need to be in a specific folder so that it c=
an find the attribute or what.
>>>>>>>=20
>>>>>>> Sincerely,
>>>>>>>=20
>>>>>>> Moges
>>>>>>>=20
>>>>>>>=20
>>>>>>> _______________________________________________
>>>>>>> USRP-users mailing list
>>>>>>> USRP-users@lists.ettus.com
>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>> What OS?   How exactly did you install UHD? =20
>>>>>>=20
>>>>>>=20
>>>>>> _______________________________________________
>>>>>> USRP-users mailing list
>>>>>> USRP-users@lists.ettus.com
>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>=20
>>=20

--Apple-Mail-FF821B99-9703-4262-A055-983FCA8D1163
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">That=E2=80=99s a good question. I=E2=80=99m=
<div>Not sure if the packaging person for Ubuntu pays attention to this list=
=E2=80=94they would be able to definitively answer that.&nbsp;</div><div><br=
></div><div>The Python API may be a separate package.&nbsp;</div><div><br></=
div><div>I *think* the PPA provided by Ettus includes the Python API. Be car=
eful about</div><div>Mixing the official packages with the PPA packages (and=
 by inference bits and pieces built from source). &nbsp;I can confirm this l=
ater today.&nbsp;</div><div><br><div dir=3D"ltr">Sent from my iPhone</div><d=
iv dir=3D"ltr"><br><blockquote type=3D"cite">On Aug 19, 2020, at 11:57 AM, E=
phraim Moges &lt;emoges@uncc.edu&gt; wrote:<br><br></blockquote></div><block=
quote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"auto">Will this al=
so allow for me to call "import uhd" in my python scripts?<br></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 19,=
 2020, 11:47 AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.co=
m">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div>On 08/19/2020 11:43 AM, Ephraim Moges
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"auto">I tried to install it on I ubuntu 20 or 18 but ran
        into many issues. I can reinstall Ubuntu 20 but I'm not sure
        what steps you would recommend to follow to allow for an easy
        installation.</div>
    </blockquote>
<a href=3D"https://files.ettus.com/manual/page_install.html#install_linux_pk=
gmgr" target=3D"_blank" rel=3D"noreferrer">https://files.ettus.com/manual/pa=
ge_install.html#install_linux_pkgmgr</a><br>
    <br>
    Refer to the "using your package manager" section.<br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 19, 2020, 11:41 AM=

          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" tar=
get=3D"_blank" rel=3D"noreferrer">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">
          <div bgcolor=3D"#FFFFFF" text=3D"#000000">
            <div>On 08/19/2020 11:36 AM, Ephraim Moges wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"auto">Ubuntu 16 and I used cmake instructions
                <div dir=3D"auto"><br>
                </div>
                <div dir=3D"auto"><a href=3D"https://files.ettus.com/manual/=
page_build_guide.html" rel=3D"noreferrer noreferrer" target=3D"_blank">https=
://files.ettus.com/manual/page_build_guide.html</a><br>
                </div>
              </div>
            </blockquote>
            OK, so when CMake ran, did it say that it was turning off
            various features, due to missing dependencies.<br>
            <br>
            Also, Ubuntu 16 is insanely, outrageously, out-of-date, and
            I'm surprised that you could build current UHD AT ALL on it.<br>=

            <br>
            Please consider upgrading to a more-recent OS version.<br>
            <br>
            In fact, on a newer Ubuntu (like the latest), you shouldn't
            need to build UHD at all--it's already packaged and can be
            installed<br>
            &nbsp; using the package manager.<br>
            <br>
            <br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 19, 2020,
                  11:35 AM Marcus D. Leech via USRP-users &lt;<a href=3D"mai=
lto:usrp-users@lists.ettus.com" rel=3D"noreferrer noreferrer" target=3D"_bla=
nk">usrp-users@lists.ettus.com</a>&gt;

                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">
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
                              image attached "the module uhd has no
                              attribute 'usrp'". My installation
                              indicated everything was good when I ran a
                              make test, so I am not sure if I need to
                              be in a specific folder so that it can
                              find the attribute or what.<br>
                              <br>
                              <div data-smartmail=3D"gmail_signature" dir=3D=
"auto">Sincerely,<br>
                                <br>
                              </div>
                              <div data-smartmail=3D"gmail_signature" dir=3D=
"auto">Moges<br>
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
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer noreferrer n=
oreferrer" target=3D"_blank">USRP-users@lists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">http://lists.e=
ttus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
                    </blockquote>
                    What OS?&nbsp;&nbsp; How exactly did you install UHD?&nb=
sp; <br>
                    <br>
                    <br>
                  </div>
                  _______________________________________________<br>
                  USRP-users mailing list<br>
                  <a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noref=
errer noreferrer noreferrer" target=3D"_blank">USRP-users@lists.ettus.com</a=
><br>
                  <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-us=
ers_lists.ettus.com" rel=3D"noreferrer noreferrer noreferrer noreferrer" tar=
get=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettu=
s.com</a><br>
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
</div></blockquote></div></body></html>=

--Apple-Mail-FF821B99-9703-4262-A055-983FCA8D1163--


--===============7073274133358612551==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7073274133358612551==--

