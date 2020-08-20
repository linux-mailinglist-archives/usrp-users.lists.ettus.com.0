Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C7E24B78C
	for <lists+usrp-users@lfdr.de>; Thu, 20 Aug 2020 12:58:49 +0200 (CEST)
Received: from [::1] (port=39800 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k8iHL-00055X-99; Thu, 20 Aug 2020 06:58:43 -0400
Received: from mail-il1-f172.google.com ([209.85.166.172]:36096)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <emoges@uncc.edu>) id 1k8iHI-000514-0n
 for USRP-users@lists.ettus.com; Thu, 20 Aug 2020 06:58:40 -0400
Received: by mail-il1-f172.google.com with SMTP id z3so1251904ilh.3
 for <USRP-users@lists.ettus.com>; Thu, 20 Aug 2020 03:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uncc.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sn753Sbmndl0WczIQ764Om2Y52nAebWOwmCxQCOxsqA=;
 b=h+3cPgppkq/lrNhXPwsdxHOxzq4FOreV/E8Xbu+3QmVsy1DkDhIZRQapw8avd4tZI5
 xF5hJRcFyfFptLOxrA7s58lzrcVsgN4uZeuxbzvYFc8iZQScP7AAbWAg37uwabaI2WCn
 Q+GWFwfQ7mhlWricbvrOMAKgyWp8Jcs4krEnY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sn753Sbmndl0WczIQ764Om2Y52nAebWOwmCxQCOxsqA=;
 b=GuPUEHaijP4lzy1qnewIPRXaXocSlobTzcfn1j2GM8Vv17qnAHXQ2PMB+6eqn7sW8g
 dEpD6wDJFqDQvNaeRzDZltV7f8b/8q4PUhI2e5mv0qMnxOurgBRjtUjjlRgW1iI+6efn
 +ORt5uYIzfpGUfuL4yz+SDaXLWCY30jneQFsc43XoZQ1SQdwp0rzIgTpKN3JkW9Mf7Lu
 rCoo9KRTla+82SQkyaQsRfPgcxpfd4b7+qK5zrtGl/fcXKVrz+KVQuf07WjhJ/5QKwuK
 OpNiL7mrUn1DLoa2yyETnaZZuCZ+D66gJWpp9ALF2R6eIvC5RjLvQPqNNv9/d7hSRSgp
 cZLw==
X-Gm-Message-State: AOAM532ipfx/avQNLvB5sYvFw7xnceMnpHnD6PBqhoPr2Ba9814zBkqd
 SPS5IG5ELsVf7oqyRVBDeL/iyl8qx+IYl5ZHYzFv5w==
X-Google-Smtp-Source: ABdhPJzzZNCRy/7UB2bZLkfg0s3XBpLxJnn4yPkd6SzfrebnWztR9dE8TF9hZbTFcnZzzmZfy0Z/KtsJIjPL/2WEdNc=
X-Received: by 2002:a92:9e48:: with SMTP id q69mr2292241ili.170.1597921078738; 
 Thu, 20 Aug 2020 03:57:58 -0700 (PDT)
MIME-Version: 1.0
References: <CANwgjNp9NiRfWnidoV0MGKFLP8YKKYFgjV=9jiKDz91DxfLn9w@mail.gmail.com>
 <E0495F5B-2367-4ADC-B00F-E114849470FD@gmail.com>
In-Reply-To: <E0495F5B-2367-4ADC-B00F-E114849470FD@gmail.com>
Date: Thu, 20 Aug 2020 06:57:48 -0400
Message-ID: <CANwgjNoe7Qeq-KWFvNaN6vStzLupbcPsPqH4+t-BE-ZN43cQcA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============5306664227837267517=="
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

--===============5306664227837267517==
Content-Type: multipart/alternative; boundary="00000000000047557905ad4cfe38"

--00000000000047557905ad4cfe38
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Good Morning,

I am getting an error when follow the package manager route. I think it is
because their is currently no build that ettus was able to do on Ubuntu 20
and 18 according to ettus records. Please advise if I should revert back to
ubuntu 16 or if this problem is unique to my computer.

https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd/+packages

Err:6 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu focal Release

  404  Not Found [IP: 91.189.95.83 80]
Hit:7 https://deb.trendtechcn.com stable InRelease

Reading package lists... Done
E: The repository 'http://ppa.launchpad.net/ettusresearch/uhd/ubuntu focal
Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore
disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration
details.

Sincerely,

Ephraim Moges


On Wed, Aug 19, 2020 at 12:26 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> Please try the PPA route. Just spoke with Ettus R&D.
>
>
>
> Sent from my iPhone
>
> On Aug 19, 2020, at 12:16 PM, Ephraim Moges <emoges@uncc.edu> wrote:
>
> =EF=BB=BF
> Thank you I look forward to hearing from you. In the meantime I will
> reinstall Ubuntu 20 and the essential libraries.
>
>
> On Wed, Aug 19, 2020, 12:13 PM Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
>> That=E2=80=99s a good question. I=E2=80=99m
>> Not sure if the packaging person for Ubuntu pays attention to this
>> list=E2=80=94they would be able to definitively answer that.
>>
>> The Python API may be a separate package.
>>
>> I *think* the PPA provided by Ettus includes the Python API. Be careful
>> about
>> Mixing the official packages with the PPA packages (and by inference bit=
s
>> and pieces built from source).  I can confirm this later today.
>>
>> Sent from my iPhone
>>
>> On Aug 19, 2020, at 11:57 AM, Ephraim Moges <emoges@uncc.edu> wrote:
>>
>> =EF=BB=BF
>> Will this also allow for me to call "import uhd" in my python scripts?
>>
>> On Wed, Aug 19, 2020, 11:47 AM Marcus D. Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> On 08/19/2020 11:43 AM, Ephraim Moges wrote:
>>>
>>> I tried to install it on I ubuntu 20 or 18 but ran into many issues. I
>>> can reinstall Ubuntu 20 but I'm not sure what steps you would recommend=
 to
>>> follow to allow for an easy installation.
>>>
>>> https://files.ettus.com/manual/page_install.html#install_linux_pkgmgr
>>>
>>> Refer to the "using your package manager" section.
>>>
>>>
>>>
>>>
>>>
>>>
>>> On Wed, Aug 19, 2020, 11:41 AM Marcus D. Leech <patchvonbraun@gmail.com=
>
>>> wrote:
>>>
>>>> On 08/19/2020 11:36 AM, Ephraim Moges wrote:
>>>>
>>>> Ubuntu 16 and I used cmake instructions
>>>>
>>>> https://files.ettus.com/manual/page_build_guide.html
>>>>
>>>> OK, so when CMake ran, did it say that it was turning off various
>>>> features, due to missing dependencies.
>>>>
>>>> Also, Ubuntu 16 is insanely, outrageously, out-of-date, and I'm
>>>> surprised that you could build current UHD AT ALL on it.
>>>>
>>>> Please consider upgrading to a more-recent OS version.
>>>>
>>>> In fact, on a newer Ubuntu (like the latest), you shouldn't need to
>>>> build UHD at all--it's already packaged and can be installed
>>>>   using the package manager.
>>>>
>>>>
>>>>
>>>> On Wed, Aug 19, 2020, 11:35 AM Marcus D. Leech via USRP-users <
>>>> usrp-users@lists.ettus.com> wrote:
>>>>
>>>>> On 08/19/2020 11:27 AM, Ephraim Moges via USRP-users wrote:
>>>>>
>>>>> Good Morning,
>>>>>
>>>>> I am having a problem running the python benchmark_rate.py. The error
>>>>> message I am receiving is in the image attached "the module uhd has n=
o
>>>>> attribute 'usrp'". My installation indicated everything was good when=
 I ran
>>>>> a make test, so I am not sure if I need to be in a specific folder so=
 that
>>>>> it can find the attribute or what.
>>>>>
>>>>> Sincerely,
>>>>>
>>>>> Moges
>>>>>
>>>>>
>>>>> _______________________________________________
>>>>> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.c=
om/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>
>>>>> What OS?   How exactly did you install UHD?
>>>>>
>>>>>
>>>>> _______________________________________________
>>>>> USRP-users mailing list
>>>>> USRP-users@lists.ettus.com
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>
>>>>
>>>>
>>>

--00000000000047557905ad4cfe38
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good Morning,<div><br></div><div>I am getting an error whe=
n follow the package manager route. I think it is because their is currentl=
y no build that ettus was able to do on Ubuntu 20 and 18 according to ettus=
 records. Please advise if I should revert back to ubuntu 16 or if this pro=
blem is unique to my computer.</div><div><br></div><div><a href=3D"https://=
launchpad.net/~ettusresearch/+archive/ubuntu/uhd/+packages">https://launchp=
ad.net/~ettusresearch/+archive/ubuntu/uhd/+packages</a>=C2=A0=C2=A0<br></di=
v><div><br></div><div>Err:6 <a href=3D"http://ppa.launchpad.net/ettusresear=
ch/uhd/ubuntu">http://ppa.launchpad.net/ettusresearch/uhd/ubuntu</a> focal =
Release =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 <br>=C2=A0 404 =C2=A0Not Found [IP: 91.189.95.83 80]<b=
r>Hit:7 <a href=3D"https://deb.trendtechcn.com">https://deb.trendtechcn.com=
</a> stable InRelease =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>Reading package lists... Done =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0<br>E: The repository &#39;<a href=3D"http://ppa.launchpad=
.net/ettusresearch/uhd/ubuntu">http://ppa.launchpad.net/ettusresearch/uhd/u=
buntu</a> focal Release&#39; does not have a Release file.<br>N: Updating f=
rom such a repository can&#39;t be done securely, and is therefore disabled=
 by default.<br>N: See apt-secure(8) manpage for repository creation and us=
er configuration details.<br><div><div dir=3D"ltr" class=3D"gmail_signature=
" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><br></div><div>S=
incerely,<br><br></div>Ephraim Moges<br></div></div></div><br></div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed,=
 Aug 19, 2020 at 12:26 PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbrau=
n@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Please try the PPA ro=
ute. Just spoke with Ettus R&amp;D.=C2=A0<div><br></div><div><br><br><div d=
ir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=
=3D"cite">On Aug 19, 2020, at 12:16 PM, Ephraim Moges &lt;<a href=3D"mailto=
:emoges@uncc.edu" target=3D"_blank">emoges@uncc.edu</a>&gt; wrote:<br><br><=
/blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div =
dir=3D"auto">Thank you I look forward to hearing from you. In the meantime =
I will reinstall Ubuntu 20 and the essential libraries.=C2=A0<br><div><br><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Wed, Aug 19, 2020, 12:13 PM Marcus D Leech &lt;<a href=3D"mailto:pa=
tchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"auto">That=E2=80=99s a good question. I=E2=80=99m<div>Not sure if the pack=
aging person for Ubuntu pays attention to this list=E2=80=94they would be a=
ble to definitively answer that.=C2=A0</div><div><br></div><div>The Python =
API may be a separate package.=C2=A0</div><div><br></div><div>I *think* the=
 PPA provided by Ettus includes the Python API. Be careful about</div><div>=
Mixing the official packages with the PPA packages (and by inference bits a=
nd pieces built from source).=C2=A0 I can confirm this later today.=C2=A0</=
div><div><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br=
><blockquote type=3D"cite">On Aug 19, 2020, at 11:57 AM, Ephraim Moges &lt;=
<a href=3D"mailto:emoges@uncc.edu" rel=3D"noreferrer" target=3D"_blank">emo=
ges@uncc.edu</a>&gt; wrote:<br><br></blockquote></div><blockquote type=3D"c=
ite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"auto">Will this also allow for m=
e to call &quot;import uhd&quot; in my python scripts?<br></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 19, 2=
020, 11:47 AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com=
" rel=3D"noreferrer" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
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
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
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
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div bgcolor=3D"#FFFFFF">
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
                              <div dir=3D"auto">Sincerely,<br>
                                <br>
                              </div>
                              <div dir=3D"auto">Moges<br>
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
</div></blockquote></div></div></blockquote></div>

--00000000000047557905ad4cfe38--


--===============5306664227837267517==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5306664227837267517==--

