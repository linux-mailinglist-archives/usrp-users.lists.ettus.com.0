Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9233F803A8
	for <lists+usrp-users@lfdr.de>; Sat,  3 Aug 2019 03:14:41 +0200 (CEST)
Received: from [::1] (port=35074 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1htid0-0002uU-T4; Fri, 02 Aug 2019 21:14:34 -0400
Received: from mail-lj1-f169.google.com ([209.85.208.169]:37269)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <saeidh@gmail.com>) id 1hticw-0002kM-BE
 for usrp-users@lists.ettus.com; Fri, 02 Aug 2019 21:14:30 -0400
Received: by mail-lj1-f169.google.com with SMTP id z28so20224013ljn.4
 for <usrp-users@lists.ettus.com>; Fri, 02 Aug 2019 18:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+q0vtIP3FCCEqoTBDSfJOVmvBFe64pyXnGaTMpSFU+4=;
 b=rVTtl11yJCqnAHm2phbY69euOYSYuqyhuiWlGLAD3nt7y2grbAiYRNLB8/46fkk7d/
 YiWEbxp3l3lHnkEox94+dnsBEQtTZJyybnTq7aeIYUpFNxpY9gZNw5OinWXOYNB11GLG
 2IKpTqUo8uX/Z9vOlhlxptBKNzo6wfh4Q9DfeC/FUaQtRPYUrPP2DhuUCYoz42GvC8hX
 NqZaZCdIsJNnsVMqk3ppaOnTsaiOptwm3h6ZPZsyNXy47FIYwK+a28X/+thW4wFHA61s
 q0PmzWwBLMIqxG4o82ZJmAbU8qgOsjQgPB7dtF+uT4B0yNpVv/Et5QbZLqYDQPf2d75s
 ZZAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+q0vtIP3FCCEqoTBDSfJOVmvBFe64pyXnGaTMpSFU+4=;
 b=I58bcaiUy0tC70dUXZkY22p5flUFHMV9ZT8eS+UZzgcLWdJOeGMyJqRZf6JGcaPM1I
 xzgY9mh/AamDc7hc988/q69RLpj1EDpg5TISdEdgR1ZryDhrpHGYoyqf+C0JUuqkxOo0
 ffBcb3lvGdcFUjLi2aW00ckwEBY3QAWoR79c/UTnaP8rzcmVIaUtb40m13tNK5v/DCKo
 xHuv46a9xFeYrkrRV9VHwqsooJjOvzvy7uUcehRIw4e9xGG9lhP7d4E2hSfY64T0QNv3
 AXSeepYzQryIyN8LbvSEV6NvlmExauaf0FIOy2eOUrnSYQ7Ixa9ZoSioNFw4jtMMCNJA
 K06g==
X-Gm-Message-State: APjAAAVPEj2fWjK1Jb1U0hNrVNRiquvDvlujjfhsThzXIiRVHcaBGs1A
 fKu/mcBjVVuslUfV9IeWmjRlJrevElu8P67WAwpcoiGL
X-Google-Smtp-Source: APXvYqyIoRHss/Q8Ak5pLh+DOEFDqiUjrxcTeRIrHxT/x39h/UkxpakBHBWVMsNYtIrEp6kNSWzKvxDDQ5ylpiDt9YQ=
X-Received: by 2002:a2e:2c07:: with SMTP id s7mr35991722ljs.44.1564794828662; 
 Fri, 02 Aug 2019 18:13:48 -0700 (PDT)
MIME-Version: 1.0
References: <CANQ3h3-nEyp_b0aas9fdbHsz+OBMpNWJA0JZd7ABbfjsGmULQw@mail.gmail.com>
 <CANQ3h39nn6QZvWx7RN5gGc7KYJsL+4aon8GZ9ZCqFQVdsKfPsw@mail.gmail.com>
 <CAKJyDkLvUjxD+DaELQxJ4kem1YLQG8NwYKb=RuBNSyw7imn27Q@mail.gmail.com>
 <CANQ3h39jOJgmaZeiFvWKtqQSWi2Y27_FAGXL4c6pCBiQcRgvWw@mail.gmail.com>
In-Reply-To: <CANQ3h39jOJgmaZeiFvWKtqQSWi2Y27_FAGXL4c6pCBiQcRgvWw@mail.gmail.com>
Date: Fri, 2 Aug 2019 21:13:35 -0400
Message-ID: <CANQ3h39-DFBfFuT9Fo1vxayi=o2cC8ULhTnUy5MS36YWc2CK2Q@mail.gmail.com>
To: Robin Coxe <coxe@quanttux.com>
Content-Type: multipart/mixed; boundary="000000000000e8c9fd058f2c2fb8"
Subject: Re: [USRP-users] UHD install from source with Pybombs failed
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Saeid Hashemi via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Saeid Hashemi <saeidh@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
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

--000000000000e8c9fd058f2c2fb8
Content-Type: multipart/alternative; boundary="000000000000e8c9f9058f2c2fb6"

--000000000000e8c9f9058f2c2fb6
Content-Type: text/plain; charset="UTF-8"

Following the build from source instructions also gives me the exact same
errors:



:~/uhd/host/build$ cmake ../
> --
> -- Configuring the Python interpreter...
> -- Manually determining build Python version...
> -- Python interpreter: /usr/bin/python3 Version: 3.4.3
> -- Override with: -DPYTHON_EXECUTABLE=<path-to-python>
> -- Manually determining runtime Python version...
> -- Python runtime interpreter: /usr/bin/python3 Version: 3.4.3
> -- Override with: -DRUNTIME_PYTHON_EXECUTABLE=<path-to-python>
> -- Finding Python Libraries...
> -- Could not find Python Libraries.
> -- Operating on master branch.
> -- Using UHD Images Directory: /usr/local/share/uhd/images
> -- Build type not specified: defaulting to release.
> --
> -- Configuring Boost C++ Libraries...
> -- Looking for optional Boost components...
> -- Could NOT find Boost
> -- Looking for required Boost components...

-- Could NOT find Boost
> -- Boost include directories: /usr/include
> -- Boost library directories: /usr/lib/x86_64-linux-gnu
> -- Boost libraries:
> --
> -- Python checking for Python version 2.7 or greater
> -- Python checking for Python version 2.7 or greater - found
> --
> -- Python checking for Mako templates 0.4.2 or greater
> -- Python checking for Mako templates 0.4.2 or greater - found
> --
> -- Python checking for requests 2.0 or greater
> -- Python checking for requests 2.0 or greater - found
> --
> -- Python checking for numpy 1.7 or greater
> -- Python checking for numpy 1.7 or greater - "import numpy" failed
> --
> -- Configuring LibUHD support...
> --   Dependency Boost_FOUND = 0
> --   Dependency HAVE_PYTHON_PLAT_MIN_VERSION = TRUE
> --   Dependency HAVE_PYTHON_MODULE_MAKO = TRUE
> CMake Error at cmake/Modules/UHDComponent.cmake:59 (message):
>   Dependencies for required component LibUHD not met.
> Call Stack (most recent call first):
>   CMakeLists.txt:392 (LIBUHD_REGISTER_COMPONENT)
>
> -- Configuring incomplete, errors occurred!
> See also "/home/saeid/uhd/host/build/CMakeFiles/CMakeOutput.log".
> See also "/home/saeid/uhd/host/build/CMakeFiles/CMakeError.log".


On Fri, Aug 2, 2019 at 8:03 PM Saeid Hashemi <saeidh@gmail.com> wrote:

> Thanks for your suggestion, I did that and it says numpy is already the
> latest version, 1.8.2.
> Specifically, printing it out on the terminal gives me:
>
> $ python
> Python 2.7.6 (default, Nov 13 2018, 12:45:42)
> [GCC 4.8.4] on linux2
> Type "help", "copyright", "credits" or "license" for more information.
> >>> import numpy
> >>> numpy.version.version
> '1.8.2'
>
>
> Is there some reason Pybombs can't see it? Should I just revert to
> installing from source?
>
>
> Thanks,
> Saeid
>
> On Fri, Jul 26, 2019 at 6:24 PM Robin Coxe <coxe@quanttux.com> wrote:
>
>> It looks like UHD didn't build because it's missing the Python library
>> numpy.   You can try "pip install numpy" and rerunning PyBombs, but to be
>> honest you might have better luck starting over and installing from source
>> by following these instructions--
>>
>> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux
>>
>> On Fri, Jul 26, 2019 at 12:28 PM Saeid Hashemi via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Attempting to install boost libraries shows that they are already the
>>> latest version:
>>>
>>> libboost-dev is already the newest version.
>>> libboost-all-dev is already the newest version.
>>>
>>> On Fri, Jul 26, 2019 at 3:26 PM Saeid Hashemi <saeidh@gmail.com> wrote:
>>>
>>>> Hello everyone,
>>>>
>>>> I've attempted to install UHD using Pybombs, following up on a previous
>>>> issue I had due to my first binary install, but this is failing.
>>>>
>>>> $ pybombs prefix init -a default prefix/default/ -R gnuradio-default
>>>>
>>>> Results in:
>>>>
>>>> -- Configuring incomplete, errors occurred!
>>>> See also
>>>> "/home/saeid/prefix/default/src/uhd/host/build/CMakeFiles/CMakeOutput.log".
>>>> See also
>>>> "/home/saeid/prefix/default/src/uhd/host/build/CMakeFiles/CMakeError.log".
>>>> PyBOMBS.Packager.source - ERROR - Configuration failed after running at
>>>> least twice.
>>>> PyBOMBS.Packager.source - ERROR - Problem occurred while building
>>>> package uhd:
>>>> Configuration failed
>>>> PyBOMBS.install_manager - ERROR - Error installing package uhd.
>>>> Aborting.
>>>>
>>>> I have attached the full results, and it seems that it's not finding
>>>> the boost library, however I'm not entirely sure.
>>>>
>>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--000000000000e8c9f9058f2c2fb6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Following the build from source instructions also gives me=
 the exact same errors:<div><br></div><div><br></div><div><br></div><div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">:~/uhd/host/build$ cmake ..=
/<br>--<br>-- Configuring the Python interpreter...<br>-- Manually determin=
ing build Python version...<br>-- Python interpreter: /usr/bin/python3 Vers=
ion: 3.4.3<br>-- Override with: -DPYTHON_EXECUTABLE=3D&lt;path-to-python&gt=
;<br>-- Manually determining runtime Python version...<br>-- Python runtime=
 interpreter: /usr/bin/python3 Version: 3.4.3<br>-- Override with: -DRUNTIM=
E_PYTHON_EXECUTABLE=3D&lt;path-to-python&gt;<br>-- Finding Python Libraries=
...<br>-- Could not find Python Libraries.<br>-- Operating on master branch=
.<br>-- Using UHD Images Directory: /usr/local/share/uhd/images<br>-- Build=
 type not specified: defaulting to release.<br>--<br>-- Configuring Boost C=
++ Libraries...<br>-- Looking for optional Boost components...<br>-- Could =
NOT find Boost<br>-- Looking for required Boost components...</blockquote><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">-- Could NOT find Boost<br=
>-- Boost include directories: /usr/include<br>-- Boost library directories=
: /usr/lib/x86_64-linux-gnu<br>-- Boost libraries:<br>--<br>-- Python check=
ing for Python version 2.7 or greater<br>-- Python checking for Python vers=
ion 2.7 or greater - found<br>--<br>-- Python checking for Mako templates 0=
.4.2 or greater<br>-- Python checking for Mako templates 0.4.2 or greater -=
 found<br>--<br>-- Python checking for requests 2.0 or greater<br>-- Python=
 checking for requests 2.0 or greater - found<br>--<br>-- Python checking f=
or numpy 1.7 or greater<br>-- Python checking for numpy 1.7 or greater - &q=
uot;import numpy&quot; failed<br>--<br>-- Configuring LibUHD support...<br>=
-- =C2=A0 Dependency Boost_FOUND =3D 0<br>-- =C2=A0 Dependency HAVE_PYTHON_=
PLAT_MIN_VERSION =3D TRUE<br>-- =C2=A0 Dependency HAVE_PYTHON_MODULE_MAKO =
=3D TRUE<br>CMake Error at cmake/Modules/UHDComponent.cmake:59 (message):<b=
r>=C2=A0 Dependencies for required component LibUHD not met.<br>Call Stack =
(most recent call first):<br>=C2=A0 CMakeLists.txt:392 (LIBUHD_REGISTER_COM=
PONENT)<br><br>-- Configuring incomplete, errors occurred!<br>See also &quo=
t;/home/saeid/uhd/host/build/CMakeFiles/CMakeOutput.log&quot;.<br>See also =
&quot;/home/saeid/uhd/host/build/CMakeFiles/CMakeError.log&quot;.</blockquo=
te></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Fri, Aug 2, 2019 at 8:03 PM Saeid Hashemi &lt;<a href=3D"mailto=
:saeidh@gmail.com">saeidh@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Thanks for your suggest=
ion, I did that and it says numpy is already the latest version, 1.8.2.<div=
>Specifically, printing it out on the terminal gives me:</div><div><br></di=
v><div>$ python<br>Python 2.7.6 (default, Nov 13 2018, 12:45:42)<br>[GCC 4.=
8.4] on linux2<br>Type &quot;help&quot;, &quot;copyright&quot;, &quot;credi=
ts&quot; or &quot;license&quot; for more information.<br>&gt;&gt;&gt; impor=
t numpy<br>&gt;&gt;&gt; numpy.version.version<br>&#39;1.8.2&#39;<br></div><=
div><br></div><div><br></div><div>Is there some reason Pybombs can&#39;t se=
e it? Should I just revert to installing from source?</div><div><br></div><=
div><br></div><div>Thanks,</div><div>Saeid</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jul 26, 2019 at 6:2=
4 PM Robin Coxe &lt;<a href=3D"mailto:coxe@quanttux.com" target=3D"_blank">=
coxe@quanttux.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr">It looks like UHD didn&#39;t build becaus=
e it&#39;s missing the Python library numpy.=C2=A0 =C2=A0You can try &quot;=
pip install numpy&quot; and rerunning PyBombs, but to be honest you might h=
ave better luck starting over and installing from source by following these=
 instructions--<div><div><div><a href=3D"https://kb.ettus.com/Building_and_=
Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux" tar=
get=3D"_blank">https://kb.ettus.com/Building_and_Installing_the_USRP_Open-S=
ource_Toolchain_(UHD_and_GNU_Radio)_on_Linux</a></div></div></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, J=
ul 26, 2019 at 12:28 PM Saeid Hashemi via USRP-users &lt;<a href=3D"mailto:=
usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr"><div>Attempting to install boost libraries shows that they ar=
e already the latest version:</div><div style=3D"margin-left:40px"><br></di=
v><div style=3D"margin-left:40px">libboost-dev is already the newest versio=
n.</div><div style=3D"margin-left:40px">libboost-all-dev is already the new=
est version.<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Fri, Jul 26, 2019 at 3:26 PM Saeid Hashemi &lt;<a =
href=3D"mailto:saeidh@gmail.com" target=3D"_blank">saeidh@gmail.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div>Hello everyone,</div><div><br></div><div>I&#39;ve attempted t=
o install UHD using Pybombs, following up on a previous issue I had due to =
my first binary install, but this is failing.</div><div><br></div><div styl=
e=3D"margin-left:40px">$ pybombs prefix init -a default prefix/default/ -R =
gnuradio-default</div><div><br></div><div>Results in:</div><div><br></div><=
div style=3D"margin-left:40px">-- Configuring incomplete, errors occurred!<=
br>See also &quot;/home/saeid/prefix/default/src/uhd/host/build/CMakeFiles/=
CMakeOutput.log&quot;.<br>See also &quot;/home/saeid/prefix/default/src/uhd=
/host/build/CMakeFiles/CMakeError.log&quot;.<br>PyBOMBS.Packager.source - E=
RROR - Configuration failed after running at least twice.<br>PyBOMBS.Packag=
er.source - ERROR - Problem occurred while building package uhd:<br>Configu=
ration failed<br>PyBOMBS.install_manager - ERROR - Error installing package=
 uhd. Aborting.<br></div><div style=3D"margin-left:40px"><br></div>I have a=
ttached the full results, and it seems that it&#39;s not finding the boost =
library, however I&#39;m not entirely sure.<br><div><div><div><br></div></d=
iv></div></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000e8c9f9058f2c2fb6--
--000000000000e8c9fd058f2c2fb8
Content-Type: text/plain; charset="US-ASCII"; name="fromSourceCmakeErrors.txt"
Content-Disposition: attachment; filename="fromSourceCmakeErrors.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_jyuuc29p0>
X-Attachment-Id: f_jyuuc29p0

LS0gCi0tIENvbmZpZ3VyaW5nIHRoZSBQeXRob24gaW50ZXJwcmV0ZXIuLi4KLS0gTWFudWFsbHkg
ZGV0ZXJtaW5pbmcgYnVpbGQgUHl0aG9uIHZlcnNpb24uLi4KLS0gUHl0aG9uIGludGVycHJldGVy
OiAvdXNyL2Jpbi9weXRob24zIFZlcnNpb246IDMuNC4zCi0tIE92ZXJyaWRlIHdpdGg6IC1EUFlU
SE9OX0VYRUNVVEFCTEU9PHBhdGgtdG8tcHl0aG9uPgotLSBNYW51YWxseSBkZXRlcm1pbmluZyBy
dW50aW1lIFB5dGhvbiB2ZXJzaW9uLi4uCi0tIFB5dGhvbiBydW50aW1lIGludGVycHJldGVyOiAv
dXNyL2Jpbi9weXRob24zIFZlcnNpb246IDMuNC4zCi0tIE92ZXJyaWRlIHdpdGg6IC1EUlVOVElN
RV9QWVRIT05fRVhFQ1VUQUJMRT08cGF0aC10by1weXRob24+Ci0tIEZpbmRpbmcgUHl0aG9uIExp
YnJhcmllcy4uLgotLSBDb3VsZCBub3QgZmluZCBQeXRob24gTGlicmFyaWVzLgotLSBPcGVyYXRp
bmcgb24gbWFzdGVyIGJyYW5jaC4KLS0gVXNpbmcgVUhEIEltYWdlcyBEaXJlY3Rvcnk6IC91c3Iv
bG9jYWwvc2hhcmUvdWhkL2ltYWdlcwotLSBCdWlsZCB0eXBlIG5vdCBzcGVjaWZpZWQ6IGRlZmF1
bHRpbmcgdG8gcmVsZWFzZS4KLS0gCi0tIENvbmZpZ3VyaW5nIEJvb3N0IEMrKyBMaWJyYXJpZXMu
Li4KLS0gTG9va2luZyBmb3Igb3B0aW9uYWwgQm9vc3QgY29tcG9uZW50cy4uLgotLSBDb3VsZCBO
T1QgZmluZCBCb29zdAotLSBMb29raW5nIGZvciByZXF1aXJlZCBCb29zdCBjb21wb25lbnRzLi4u
Ci0tIENvdWxkIE5PVCBmaW5kIEJvb3N0Ci0tIEJvb3N0IGluY2x1ZGUgZGlyZWN0b3JpZXM6IC91
c3IvaW5jbHVkZQotLSBCb29zdCBsaWJyYXJ5IGRpcmVjdG9yaWVzOiAvdXNyL2xpYi94ODZfNjQt
bGludXgtZ251Ci0tIEJvb3N0IGxpYnJhcmllczogCi0tIAotLSBQeXRob24gY2hlY2tpbmcgZm9y
IFB5dGhvbiB2ZXJzaW9uIDIuNyBvciBncmVhdGVyCi0tIFB5dGhvbiBjaGVja2luZyBmb3IgUHl0
aG9uIHZlcnNpb24gMi43IG9yIGdyZWF0ZXIgLSBmb3VuZAotLSAKLS0gUHl0aG9uIGNoZWNraW5n
IGZvciBNYWtvIHRlbXBsYXRlcyAwLjQuMiBvciBncmVhdGVyCi0tIFB5dGhvbiBjaGVja2luZyBm
b3IgTWFrbyB0ZW1wbGF0ZXMgMC40LjIgb3IgZ3JlYXRlciAtIGZvdW5kCi0tIAotLSBQeXRob24g
Y2hlY2tpbmcgZm9yIHJlcXVlc3RzIDIuMCBvciBncmVhdGVyCi0tIFB5dGhvbiBjaGVja2luZyBm
b3IgcmVxdWVzdHMgMi4wIG9yIGdyZWF0ZXIgLSBmb3VuZAotLSAKLS0gUHl0aG9uIGNoZWNraW5n
IGZvciBudW1weSAxLjcgb3IgZ3JlYXRlcgotLSBQeXRob24gY2hlY2tpbmcgZm9yIG51bXB5IDEu
NyBvciBncmVhdGVyIC0gImltcG9ydCBudW1weSIgZmFpbGVkCi0tIAotLSBDb25maWd1cmluZyBM
aWJVSEQgc3VwcG9ydC4uLgotLSAgIERlcGVuZGVuY3kgQm9vc3RfRk9VTkQgPSAwCi0tICAgRGVw
ZW5kZW5jeSBIQVZFX1BZVEhPTl9QTEFUX01JTl9WRVJTSU9OID0gVFJVRQotLSAgIERlcGVuZGVu
Y3kgSEFWRV9QWVRIT05fTU9EVUxFX01BS08gPSBUUlVFCi0tIENvbmZpZ3VyaW5nIGluY29tcGxl
dGUsIGVycm9ycyBvY2N1cnJlZCEKU2VlIGFsc28gIi9ob21lL3NhZWlkL3VoZC9ob3N0L2J1aWxk
L0NNYWtlRmlsZXMvQ01ha2VPdXRwdXQubG9nIi4KU2VlIGFsc28gIi9ob21lL3NhZWlkL3VoZC9o
b3N0L2J1aWxkL0NNYWtlRmlsZXMvQ01ha2VFcnJvci5sb2ciLgo=
--000000000000e8c9fd058f2c2fb8
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--000000000000e8c9fd058f2c2fb8--

