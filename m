Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D02EC24A410
	for <lists+usrp-users@lfdr.de>; Wed, 19 Aug 2020 18:26:55 +0200 (CEST)
Received: from [::1] (port=60244 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k8QvN-0007dM-BC; Wed, 19 Aug 2020 12:26:53 -0400
Received: from mail-qv1-f42.google.com ([209.85.219.42]:36038)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k8QvJ-0007QT-KQ
 for USRP-users@lists.ettus.com; Wed, 19 Aug 2020 12:26:49 -0400
Received: by mail-qv1-f42.google.com with SMTP id v1so9686490qvn.3
 for <USRP-users@lists.ettus.com>; Wed, 19 Aug 2020 09:26:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=x5eA6XuAbwA6MbbqIV8nUrp+Er+Qa0/kYwowjyU4zgY=;
 b=jg8BzAbSodXfnXYfkiQ7ffbmuOkdj+xEnmt+R6fNacvYgi8Rj0ux2ZAxSXBCy4SG5R
 qSuMSd8GiR7Kwm3HshEPhiu50dZaCivboK3Bb58/CIkYFvniT2YYyDunSBp0CbGcc3rY
 b3eIRSVR6GhtLyRXWjxJgUUFXFq86+iHZLamRbK49AXyzlklp8tXvRdwAvAR4g066STK
 Tfi/EVWKEmXqoooSMUUh6JxaQ4S4o1+ACyXsf4HFlM/KkUUWega4OGhW9efcXuV/8zZT
 6RReuNnGgZzKyigL47RMj8QrOasnC0wDbFSiXfnDoWAJZRTXdX/lxt7fPa/MULel5/v6
 4diA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=x5eA6XuAbwA6MbbqIV8nUrp+Er+Qa0/kYwowjyU4zgY=;
 b=THKaQFIFD47X2w1OZo5rakMZqqtso9ys0HhE2pZw4ub1qJjju5NHh8rEecIzJR4Ab2
 lu9bitFrxyLz3qDVXqkRaDX7cBmkW+uJ80Bbo5b/4A48bxEHezU5efi83RDvOC4uMCiN
 035L/XfCg46iKl+zgGgtKfm8eSiZCiNT92TBEyHLhpnAOzT0xcY54oAUK+0Is6qT4GPU
 aAC7qAWDnX1uOJAW5qURD++v4+xXOyAaclndSySI1GvEXJ9QD+Rx+KAqSOCtSOpeECDM
 fJeIGOSuWqFbOkdXHNBihjQSJRSnfQlQhTf4wwFL4eTMGKrlbQyYfa0V1x3ZhcnpOh10
 Onig==
X-Gm-Message-State: AOAM5335uzNNLbBss7bcJgydRZF/KA/rvtMY+/ahHisW6zOdpPkW+dP9
 4I816KMrJXq5rK8UBnHqp7VsAWadD3J9gQ==
X-Google-Smtp-Source: ABdhPJxyz2i1zBAz2mWqLRThHT3Cvzy8pVpGW/nffXnT3PjMzg2iVNsyoLWVBmbK/4iTQDE4UL1y1A==
X-Received: by 2002:ad4:51c8:: with SMTP id p8mr24321106qvq.31.1597854369057; 
 Wed, 19 Aug 2020 09:26:09 -0700 (PDT)
Received: from ?IPv6:2605:b100:d16:544:102:3659:b300:1b75?
 ([2605:b100:d16:544:102:3659:b300:1b75])
 by smtp.gmail.com with ESMTPSA id j61sm27420066qtd.52.2020.08.19.09.26.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Aug 2020 09:26:07 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Wed, 19 Aug 2020 12:26:06 -0400
Message-Id: <E0495F5B-2367-4ADC-B00F-E114849470FD@gmail.com>
References: <CANwgjNp9NiRfWnidoV0MGKFLP8YKKYFgjV=9jiKDz91DxfLn9w@mail.gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <CANwgjNp9NiRfWnidoV0MGKFLP8YKKYFgjV=9jiKDz91DxfLn9w@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============2515430456467679974=="
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


--===============2515430456467679974==
Content-Type: multipart/alternative; boundary=Apple-Mail-185DEDFC-6369-42F5-84A7-F8DFF94AC6E6
Content-Transfer-Encoding: 7bit


--Apple-Mail-185DEDFC-6369-42F5-84A7-F8DFF94AC6E6
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Please try the PPA route. Just spoke with Ettus R&D.=20



Sent from my iPhone

> On Aug 19, 2020, at 12:16 PM, Ephraim Moges <emoges@uncc.edu> wrote:
>=20
> =EF=BB=BF
> Thank you I look forward to hearing from you. In the meantime I will reins=
tall Ubuntu 20 and the essential libraries.=20
>=20
>=20
>> On Wed, Aug 19, 2020, 12:13 PM Marcus D Leech <patchvonbraun@gmail.com> w=
rote:
>> That=E2=80=99s a good question. I=E2=80=99m
>> Not sure if the packaging person for Ubuntu pays attention to this list=E2=
=80=94they would be able to definitively answer that.=20
>>=20
>> The Python API may be a separate package.=20
>>=20
>> I *think* the PPA provided by Ettus includes the Python API. Be careful a=
bout
>> Mixing the official packages with the PPA packages (and by inference bits=
 and pieces built from source).  I can confirm this later today.=20
>>=20
>> Sent from my iPhone
>>=20
>>>> On Aug 19, 2020, at 11:57 AM, Ephraim Moges <emoges@uncc.edu> wrote:
>>>>=20
>>> =EF=BB=BF
>>> Will this also allow for me to call "import uhd" in my python scripts?
>>>=20
>>>> On Wed, Aug 19, 2020, 11:47 AM Marcus D. Leech <patchvonbraun@gmail.com=
> wrote:
>>>> On 08/19/2020 11:43 AM, Ephraim Moges wrote:
>>>>> I tried to install it on I ubuntu 20 or 18 but ran into many issues. I=
 can reinstall Ubuntu 20 but I'm not sure what steps you would recommend to f=
ollow to allow for an easy installation.
>>>> https://files.ettus.com/manual/page_install.html#install_linux_pkgmgr
>>>>=20
>>>> Refer to the "using your package manager" section.
>>>>=20
>>>>=20
>>>>=20
>>>>=20
>>>>=20
>>>>>=20
>>>>> On Wed, Aug 19, 2020, 11:41 AM Marcus D. Leech <patchvonbraun@gmail.co=
m> wrote:
>>>>>>> On 08/19/2020 11:36 AM, Ephraim Moges wrote:
>>>>>>> Ubuntu 16 and I used cmake instructions
>>>>>>>=20
>>>>>>> https://files.ettus.com/manual/page_build_guide.html
>>>>>> OK, so when CMake ran, did it say that it was turning off various fea=
tures, due to missing dependencies.
>>>>>>=20
>>>>>> Also, Ubuntu 16 is insanely, outrageously, out-of-date, and I'm surpr=
ised that you could build current UHD AT ALL on it.
>>>>>>=20
>>>>>> Please consider upgrading to a more-recent OS version.
>>>>>>=20
>>>>>> In fact, on a newer Ubuntu (like the latest), you shouldn't need to b=
uild UHD at all--it's already packaged and can be installed
>>>>>>   using the package manager.
>>>>>>=20
>>>>>>=20
>>>>>>>=20
>>>>>>> On Wed, Aug 19, 2020, 11:35 AM Marcus D. Leech via USRP-users <usrp-=
users@lists.ettus.com> wrote:
>>>>>>>> On 08/19/2020 11:27 AM, Ephraim Moges via USRP-users wrote:
>>>>>>>>> Good Morning,
>>>>>>>>>=20
>>>>>>>>> I am having a problem running the python benchmark_rate.py. The er=
ror message I am receiving is in the image attached "the module uhd has no a=
ttribute 'usrp'". My installation indicated everything was good when I ran a=
 make test, so I am not sure if I need to be in a specific folder so that it=
 can find the attribute or what.
>>>>>>>>>=20
>>>>>>>>> Sincerely,
>>>>>>>>>=20
>>>>>>>>> Moges
>>>>>>>>>=20
>>>>>>>>>=20
>>>>>>>>> _______________________________________________
>>>>>>>>> USRP-users mailing list
>>>>>>>>> USRP-users@lists.ettus.com
>>>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=

>>>>>>>> What OS?   How exactly did you install UHD? =20
>>>>>>>>=20
>>>>>>>>=20
>>>>>>>> _______________________________________________
>>>>>>>> USRP-users mailing list
>>>>>>>> USRP-users@lists.ettus.com
>>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>=20
>>>>=20

--Apple-Mail-185DEDFC-6369-42F5-84A7-F8DFF94AC6E6
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Please try the PPA route. Just spoke with E=
ttus R&amp;D.&nbsp;<div><br></div><div><br><br><div dir=3D"ltr">Sent from my=
 iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Aug 19, 2020,=
 at 12:16 PM, Ephraim Moges &lt;emoges@uncc.edu&gt; wrote:<br><br></blockquo=
te></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"aut=
o">Thank you I look forward to hearing from you. In the meantime I will rein=
stall Ubuntu 20 and the essential libraries.&nbsp;<br><div data-smartmail=3D=
"gmail_signature"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Wed, Aug 19, 2020, 12:13 PM Marcus D Leech &lt=
;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto">That=E2=80=99=
s a good question. I=E2=80=99m<div>Not sure if the packaging person for Ubun=
tu pays attention to this list=E2=80=94they would be able to definitively an=
swer that.&nbsp;</div><div><br></div><div>The Python API may be a separate p=
ackage.&nbsp;</div><div><br></div><div>I *think* the PPA provided by Ettus i=
ncludes the Python API. Be careful about</div><div>Mixing the official packa=
ges with the PPA packages (and by inference bits and pieces built from sourc=
e).&nbsp; I can confirm this later today.&nbsp;</div><div><br><div dir=3D"lt=
r">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">O=
n Aug 19, 2020, at 11:57 AM, Ephraim Moges &lt;<a href=3D"mailto:emoges@uncc=
.edu" target=3D"_blank" rel=3D"noreferrer">emoges@uncc.edu</a>&gt; wrote:<br=
><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF=
<div dir=3D"auto">Will this also allow for me to call "import uhd" in my pyt=
hon scripts?<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Wed, Aug 19, 2020, 11:47 AM Marcus D. Leech &lt;<a href=3D"m=
ailto:patchvonbraun@gmail.com" target=3D"_blank" rel=3D"noreferrer">patchvon=
braun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
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
gmgr" rel=3D"noreferrer noreferrer" target=3D"_blank">https://files.ettus.co=
m/manual/page_install.html#install_linux_pkgmgr</a><br>
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

          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" rel=
=3D"noreferrer noreferrer" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;=

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
page_build_guide.html" rel=3D"noreferrer noreferrer noreferrer" target=3D"_b=
lank">https://files.ettus.com/manual/page_build_guide.html</a><br>
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
lto:usrp-users@lists.ettus.com" rel=3D"noreferrer noreferrer noreferrer" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;

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
oreferrer noreferrer" target=3D"_blank">USRP-users@lists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank">htt=
p://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
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
errer noreferrer noreferrer noreferrer" target=3D"_blank">USRP-users@lists.e=
ttus.com</a><br>
                  <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-us=
ers_lists.ettus.com" rel=3D"noreferrer noreferrer noreferrer noreferrer nore=
ferrer" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users=
_lists.ettus.com</a><br>
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
</div></blockquote></div></div></blockquote></div>
</div></blockquote></div></body></html>=

--Apple-Mail-185DEDFC-6369-42F5-84A7-F8DFF94AC6E6--


--===============2515430456467679974==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2515430456467679974==--

