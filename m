Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FFB24A3DC
	for <lists+usrp-users@lfdr.de>; Wed, 19 Aug 2020 18:17:42 +0200 (CEST)
Received: from [::1] (port=60140 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k8QmT-0006ZK-5R; Wed, 19 Aug 2020 12:17:41 -0400
Received: from mail-io1-f48.google.com ([209.85.166.48]:43045)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <emoges@uncc.edu>) id 1k8QmP-0006PH-S8
 for USRP-users@lists.ettus.com; Wed, 19 Aug 2020 12:17:37 -0400
Received: by mail-io1-f48.google.com with SMTP id s1so12175408iot.10
 for <USRP-users@lists.ettus.com>; Wed, 19 Aug 2020 09:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uncc.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=u+GBK8gA156xYpec+IUS6BoD+rKMXqiR0Shh9dRmy18=;
 b=gIp89g6i0CmiBgMPudlvZaoCuOGk8+pY/O6aEAbtyOY8DsqMrzUYg5rw6xzsCBYLiy
 rHJgFMDxkeaiqlKjuYsmEvVasXpB+jdnsg7SIGbef46n67nAjT3DP6buECi4XNJzTPHd
 Ta2RtBu2dZ2Z0BIIRAe6WIAWDSZN5bWHJiVFY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=u+GBK8gA156xYpec+IUS6BoD+rKMXqiR0Shh9dRmy18=;
 b=sjZmmmE9kK+8zZuZNBjC3kLMR6hmY5Z9/KyE68nh2uFFVWWHV1+d3lZ9md8yWUaqNM
 2tf1YHLv/ueDm++nUh+U7Aj6rEs7nGs7OmK4mrB42OuDLKdeSb8cMScFiVS+yOUwUelu
 ftDGs7+mBrglvonpqi2+UvIdltlXSuffKpZYrVLiGfbt0GGLF/HW4s4dv/FATnJA97VH
 XkaotTTWVld+2P3GkRIQ95yI27JJZ/gRENozK2IooTQIfpi6YG+QxXKKNyOYjVmlFNhC
 L3qfHmdgDb3w1rnrZpSmXUSU/qcy5G9gPR2QQvuDkGdGJpOfke7A9VpPPU4DV8TTrjj0
 5+/Q==
X-Gm-Message-State: AOAM531LFgCf4XeSielIAHyySilR63/Kpy5cjB9lLvlzMAhMXs2bdVJQ
 2KUXBjDFXU27jCcByK1bdXRKLQjPyT+AIoCzxthcTQ==
X-Google-Smtp-Source: ABdhPJxlD7RJUXQUvMDaPL0l50/WcY24DZA2pssUUBPjxOjXp4erpV/VDRY3N69LjnpsZqDXPc2rluVVggUEUt7uO9U=
X-Received: by 2002:a02:95ab:: with SMTP id b40mr23977426jai.14.1597853817117; 
 Wed, 19 Aug 2020 09:16:57 -0700 (PDT)
MIME-Version: 1.0
References: <CANwgjNpA0LvSwZQ2n2LqPeC-TBH-svPnjfvf-bD1JU6eznWAhg@mail.gmail.com>
 <E3083121-60B7-4A59-8626-8B0F59ECC01A@gmail.com>
In-Reply-To: <E3083121-60B7-4A59-8626-8B0F59ECC01A@gmail.com>
Date: Wed, 19 Aug 2020 12:16:45 -0400
Message-ID: <CANwgjNp9NiRfWnidoV0MGKFLP8YKKYFgjV=9jiKDz91DxfLn9w@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
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
Content-Type: multipart/mixed; boundary="===============1322335365003492081=="
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

--===============1322335365003492081==
Content-Type: multipart/alternative; boundary="0000000000002c3d5e05ad3d5543"

--0000000000002c3d5e05ad3d5543
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you I look forward to hearing from you. In the meantime I will
reinstall Ubuntu 20 and the essential libraries.


On Wed, Aug 19, 2020, 12:13 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> That=E2=80=99s a good question. I=E2=80=99m
> Not sure if the packaging person for Ubuntu pays attention to this
> list=E2=80=94they would be able to definitively answer that.
>
> The Python API may be a separate package.
>
> I *think* the PPA provided by Ettus includes the Python API. Be careful
> about
> Mixing the official packages with the PPA packages (and by inference bits
> and pieces built from source).  I can confirm this later today.
>
> Sent from my iPhone
>
> On Aug 19, 2020, at 11:57 AM, Ephraim Moges <emoges@uncc.edu> wrote:
>
> =EF=BB=BF
> Will this also allow for me to call "import uhd" in my python scripts?
>
> On Wed, Aug 19, 2020, 11:47 AM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 08/19/2020 11:43 AM, Ephraim Moges wrote:
>>
>> I tried to install it on I ubuntu 20 or 18 but ran into many issues. I
>> can reinstall Ubuntu 20 but I'm not sure what steps you would recommend =
to
>> follow to allow for an easy installation.
>>
>> https://files.ettus.com/manual/page_install.html#install_linux_pkgmgr
>>
>> Refer to the "using your package manager" section.
>>
>>
>>
>>
>>
>>
>> On Wed, Aug 19, 2020, 11:41 AM Marcus D. Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> On 08/19/2020 11:36 AM, Ephraim Moges wrote:
>>>
>>> Ubuntu 16 and I used cmake instructions
>>>
>>> https://files.ettus.com/manual/page_build_guide.html
>>>
>>> OK, so when CMake ran, did it say that it was turning off various
>>> features, due to missing dependencies.
>>>
>>> Also, Ubuntu 16 is insanely, outrageously, out-of-date, and I'm
>>> surprised that you could build current UHD AT ALL on it.
>>>
>>> Please consider upgrading to a more-recent OS version.
>>>
>>> In fact, on a newer Ubuntu (like the latest), you shouldn't need to
>>> build UHD at all--it's already packaged and can be installed
>>>   using the package manager.
>>>
>>>
>>>
>>> On Wed, Aug 19, 2020, 11:35 AM Marcus D. Leech via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> On 08/19/2020 11:27 AM, Ephraim Moges via USRP-users wrote:
>>>>
>>>> Good Morning,
>>>>
>>>> I am having a problem running the python benchmark_rate.py. The error
>>>> message I am receiving is in the image attached "the module uhd has no
>>>> attribute 'usrp'". My installation indicated everything was good when =
I ran
>>>> a make test, so I am not sure if I need to be in a specific folder so =
that
>>>> it can find the attribute or what.
>>>>
>>>> Sincerely,
>>>>
>>>> Moges
>>>>
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>> What OS?   How exactly did you install UHD?
>>>>
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>
>>>
>>

--0000000000002c3d5e05ad3d5543
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thank you I look forward to hearing from you. In the mean=
time I will reinstall Ubuntu 20 and the essential libraries.=C2=A0<br><div =
data-smartmail=3D"gmail_signature"><br></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 19, 2020, 12:13 PM=
 Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbrau=
n@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"auto">That=E2=80=99s a good question. I=E2=80=99m<div>Not sure if the p=
ackaging person for Ubuntu pays attention to this list=E2=80=94they would b=
e able to definitively answer that.=C2=A0</div><div><br></div><div>The Pyth=
on API may be a separate package.=C2=A0</div><div><br></div><div>I *think* =
the PPA provided by Ettus includes the Python API. Be careful about</div><d=
iv>Mixing the official packages with the PPA packages (and by inference bit=
s and pieces built from source).=C2=A0 I can confirm this later today.=C2=
=A0</div><div><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr=
"><br><blockquote type=3D"cite">On Aug 19, 2020, at 11:57 AM, Ephraim Moges=
 &lt;<a href=3D"mailto:emoges@uncc.edu" target=3D"_blank" rel=3D"noreferrer=
">emoges@uncc.edu</a>&gt; wrote:<br><br></blockquote></div><blockquote type=
=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"auto">Will this also allow =
for me to call &quot;import uhd&quot; in my python scripts?<br></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug =
19, 2020, 11:47 AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmai=
l.com" target=3D"_blank" rel=3D"noreferrer">patchvonbraun@gmail.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">
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
kgmgr" rel=3D"noreferrer noreferrer" target=3D"_blank">https://files.ettus.=
com/manual/page_install.html#install_linux_pkgmgr</a><br>
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
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" re=
l=3D"noreferrer noreferrer" target=3D"_blank">patchvonbraun@gmail.com</a>&g=
t;
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
/page_build_guide.html" rel=3D"noreferrer noreferrer noreferrer" target=3D"=
_blank">https://files.ettus.com/manual/page_build_guide.html</a><br>
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
ilto:usrp-users@lists.ettus.com" rel=3D"noreferrer noreferrer noreferrer" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a>&gt;

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
noreferrer noreferrer" target=3D"_blank">USRP-users@lists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank">h=
ttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
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
ferrer noreferrer noreferrer noreferrer" target=3D"_blank">USRP-users@lists=
.ettus.com</a><br>
                  <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-u=
sers_lists.ettus.com" rel=3D"noreferrer noreferrer noreferrer noreferrer no=
referrer" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-us=
ers_lists.ettus.com</a><br>
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

--0000000000002c3d5e05ad3d5543--


--===============1322335365003492081==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1322335365003492081==--

