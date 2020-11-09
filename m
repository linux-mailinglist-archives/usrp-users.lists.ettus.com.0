Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 773B42ABF4D
	for <lists+usrp-users@lfdr.de>; Mon,  9 Nov 2020 16:00:44 +0100 (CET)
Received: from [::1] (port=54908 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kc8et-0003ub-EG; Mon, 09 Nov 2020 10:00:39 -0500
Received: from mail-ed1-f53.google.com ([209.85.208.53]:38724)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1kc8ep-0003n6-8l
 for usrp-users@lists.ettus.com; Mon, 09 Nov 2020 10:00:35 -0500
Received: by mail-ed1-f53.google.com with SMTP id k9so9071250edo.5
 for <usrp-users@lists.ettus.com>; Mon, 09 Nov 2020 07:00:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=m56kOibl0Cs4cqbjVRiePwmCP9wLRE4rnKngdVg1Na4=;
 b=JlieA4Z+JTDTvrnxS++B4A6BPNpHtpkAnPrqWVhKDu9NIL4QHkFRHUchB1VwwD+JzS
 JBTTZ3p4UGWTJpcoYKXA1T9vovopTCkva9vve+GwbCgKSrLUEJ3q7uI8rxLriAD/z5IU
 hxKE70RP1X3EDIQnCVrEDK2KFgMep5wF1Xfv0uRIx45JNCdTZk0RkHHsiz+Arqx0RJgH
 +oJWeMPjE+JBNih8pNg4TEYo8SUP1/CG4mR47NNRa7uh0HtlxaweLDD6JqSGfXbq2hjt
 39ULcYmc/Ybv/3Nv43asPLaXCS7ggb1PUcLpIZPWbKZepJruNWgjAVd+crNibSsxdxLO
 D3nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=m56kOibl0Cs4cqbjVRiePwmCP9wLRE4rnKngdVg1Na4=;
 b=S80zRaBLhpaAG6qikGU3A2toGGy13Zz8SkNcAqRpJ8/kG0g7MBxj3DUi5BxcatxcKz
 V0cu9Eu/137nb/22s9uMVBq0LI0m+hAkFYRpICfXsqOfhVP+BCFfsojPYGyjIv+6k67p
 Kd0siNDIhgJUcsTFvn7KPK/vKrLCqfiieHcRapLcEf1M6dse/7yiKIzpIhdWisRquzAs
 PuZvBj8ZyJBX/m57kvYVXHHy/1tiz6RyM6yMovy72r+9fw018OvPwQ4IS0oIVPyuzlBC
 PhKz5nvGhlsPpZelNc+tDlPecjP5rEnOfreMiaVVWDs79D7vPsrNXDoIuUsBTTOc7ETN
 p8fA==
X-Gm-Message-State: AOAM530Y9+KcWGbtBWCRTX46BHEc7SG+qrQWWkdbEKxHc+GX3cYHYuJC
 jxrQEB+9iVD66e3If8IWYsvabDXRKUe4SJjiQSO5qoncG7O4hWQB
X-Google-Smtp-Source: ABdhPJwaiz0AGo7U33CszDigNamNT2LZF/fS3PxFGnrhI+VColiPQEWos13viwroFWXqGdeyU69e1Gxq6Lu2uzf45xI=
X-Received: by 2002:a50:ec10:: with SMTP id g16mr16279690edr.63.1604933994317; 
 Mon, 09 Nov 2020 06:59:54 -0800 (PST)
MIME-Version: 1.0
References: <CALNMZ8Wf-ZjvRRW9soXiF7xqAzxS81+5TA_8kSPYgBKzrrkSxg@mail.gmail.com>
In-Reply-To: <CALNMZ8Wf-ZjvRRW9soXiF7xqAzxS81+5TA_8kSPYgBKzrrkSxg@mail.gmail.com>
Date: Mon, 9 Nov 2020 09:59:42 -0500
Message-ID: <CAGNhwTNMjBJKp_xpLkW_2a4pk+k+xWZGRkStvz1eQHJURE6w6Q@mail.gmail.com>
To: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Cc: USRP list <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Trouble with Python API
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Content-Type: multipart/mixed; boundary="===============5176527597332401582=="
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

--===============5176527597332401582==
Content-Type: multipart/alternative; boundary="0000000000009eaa5905b3add056"

--0000000000009eaa5905b3add056
Content-Type: text/plain; charset="UTF-8"

Check the PYTHONPATH to make sure it holds the correct install directory
for UHD Python. I'm guessing it does not. I'm pretty sure UHD by default
installs its Python library and files into
"/usr/local/lib/python3/site-packages" ... or "dist-packages" ... note the
"/python3/" rather than some specific 3.X version as was the case for
earlier UHD (and many other projects). - MLD

On Mon, Nov 9, 2020 at 1:36 AM Brendan Horsfield via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Folks,
>
> I would like to write my own Python 3 script to stream Rx samples off my
> Ettus B210 USRP.  I have installed the Python API on my Ubuntu laptop, but
> I can't seem to get it to work, despite trying numerous ideas I found on
> the Ettus Knowledge Base.
>
> For example, check out the following Python interpreter log.  I can call
> "import uhd" OK, but the call to uhd.usrp.MultiUSRP() causes an error:
>
> Python 3.7.7 (default, Mar 26 2020, 15:48:22)
> [GCC 7.3.0] :: Anaconda, Inc. on linux
> Type "help", "copyright", "credits" or "license" for more information.
> >>> import uhd
> >>> my_usrp = uhd.usrp.MultiUSRP("type=b200")
> Traceback (most recent call last):
>   File "<stdin>", line 1, in <module>
> AttributeError: module 'uhd' has no attribute 'usrp'
> >>>
>
> Another example:  If I try to run the example script
> "uhd/host/examples/python/rx_to_file.py", I get the following error:
> "ModuleNotFoundError: No module named 'uhd'"
>
> The API installation procedure I have followed to this point is as follows:
> 1.  python3 -m pip install python-dev-tools --user --upgrade
> 2.  git clone https://github.com/EttusResearch/uhd.git
> 3.  pybombs install uhd
> 4.  cmake $HOME/uhd/host
>
> ######################################################
> -- # UHD enabled components
> -- ######################################################
> --   * LibUHD
> --   * LibUHD - C API
> --   * LibUHD - Python API
> --   * Examples
> --   * Utils
> --   * Tests
> --   * USB
> --   * B100
> --   * B200
> --   * USRP1
> --   * USRP2
> --   * X300
> --   * MPMD
> --   * N300
> --   * N320
> --   * E320
> --   * E300
> --   * OctoClock
> --   * Manual
> --   * API/Doxygen
> --   * Man Pages
> --
> -- ######################################################
> -- # UHD disabled components
> -- ######################################################
> --   * DPDK
> --
> -- ******************************************************
> -- * You are building the UHD development master branch.
> -- * For production code, we recommend our stable,
> -- * releases or using the release branch (maint).
> -- ******************************************************
> -- Building version: 4.0.0.0-46-g57ca4235
> -- Using install prefix: /usr/local
> -- Configuring done
> -- Generating done
> -- Build files have been written to: /home/anyone/uhd/host
>
> 5.  Set up Ubuntu dependencies: sudo apt-get install libboost-all-dev
> libusb-1.0-0-dev doxygen python3-docutils python3-mako python3-numpy
> python3-requests python3-ruamel.yaml python3-setuptools cmake
> build-essential
> 6.  Add the following line to .bashrc:  export
> LD_LIBRARY_PATH=/usr/local/lib
>
> FYI -- I am running Ubuntu 18.04 on an HP Omen laptop with an Intel
> i7-8750H CPU and 32 GB of RAM.
>
> Can anyone tell me what the source of this problem could be?  Any advice
> or suggestions would be greatly appreciated!
>
> Thanks & Regards,
> Brendan.
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000009eaa5905b3add056
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Check the PYTHONPATH to make sure it holds the correct ins=
tall directory for UHD Python. I&#39;m guessing it does not. I&#39;m pretty=
=C2=A0sure UHD by default installs its=C2=A0Python library and files into &=
quot;/usr/local/lib/python3/site-packages&quot; ... or &quot;dist-packages&=
quot; ... note the &quot;/python3/&quot; rather than some specific 3.X vers=
ion as was the case for earlier UHD (and many other projects). - MLD</div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon,=
 Nov 9, 2020 at 1:36 AM Brendan Horsfield via USRP-users &lt;<a href=3D"mai=
lto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
Hi Folks,<div><br></div><div>I would like to write my own Python 3 script t=
o stream Rx samples off my Ettus B210 USRP.=C2=A0 I have installed the Pyth=
on API on my Ubuntu laptop, but I can&#39;t seem to get it to work, despite=
 trying numerous ideas I found on the Ettus Knowledge Base.</div><div><br><=
/div><div>For example, check out the following Python interpreter log.=C2=
=A0 I can call &quot;import uhd&quot; OK, but the call to uhd.usrp.MultiUSR=
P() causes an error:=C2=A0</div><div><br></div><div>Python 3.7.7 (default, =
Mar 26 2020, 15:48:22) <br>[GCC 7.3.0] :: Anaconda, Inc. on linux<br>Type &=
quot;help&quot;, &quot;copyright&quot;, &quot;credits&quot; or &quot;licens=
e&quot; for more information.<br>&gt;&gt;&gt; import uhd<br>&gt;&gt;&gt; my=
_usrp =3D uhd.usrp.MultiUSRP(&quot;type=3Db200&quot;)<br>Traceback (most re=
cent call last):<br>=C2=A0 File &quot;&lt;stdin&gt;&quot;, line 1, in &lt;m=
odule&gt;<br>AttributeError: module &#39;uhd&#39; has no attribute &#39;usr=
p&#39;<br>&gt;&gt;&gt;=C2=A0<br></div><div><br></div><div>Another example:=
=C2=A0 If I try to run the example script &quot;uhd/host/examples/python/rx=
_to_file.py&quot;, I get the following error:=C2=A0 &quot;ModuleNotFoundErr=
or: No module named &#39;uhd&#39;&quot;=C2=A0</div><div><br></div><div>The =
API installation procedure I have followed to this point is as follows:</di=
v><div>1.=C2=A0 python3 -m pip install python-dev-tools --user --upgrade</d=
iv><div>2.=C2=A0 git clone <a href=3D"https://github.com/EttusResearch/uhd.=
git" target=3D"_blank">https://github.com/EttusResearch/uhd.git</a></div><d=
iv>3.=C2=A0 pybombs install uhd</div><div>4.=C2=A0 cmake $HOME/uhd/host</di=
v><div><br></div><div>#####################################################=
#<br>-- # UHD enabled components =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>-- ######=
################################################<br>-- =C2=A0 * LibUHD<br>-=
- =C2=A0 * LibUHD - C API<br>-- =C2=A0 * LibUHD - Python API<br>-- =C2=A0 *=
 Examples<br>-- =C2=A0 * Utils<br>-- =C2=A0 * Tests<br>-- =C2=A0 * USB<br>-=
- =C2=A0 * B100<br>-- =C2=A0 * B200<br>-- =C2=A0 * USRP1<br>-- =C2=A0 * USR=
P2<br>-- =C2=A0 * X300<br>-- =C2=A0 * MPMD<br>-- =C2=A0 * N300<br>-- =C2=A0=
 * N320<br>-- =C2=A0 * E320<br>-- =C2=A0 * E300<br>-- =C2=A0 * OctoClock<br=
>-- =C2=A0 * Manual<br>-- =C2=A0 * API/Doxygen<br>-- =C2=A0 * Man Pages<br>=
-- <br>-- ######################################################<br>-- # UH=
D disabled components =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>-- ######################=
################################<br>-- =C2=A0 * DPDK<br>-- <br>-- *********=
*********************************************<br>-- * You are building the =
UHD development master branch.<br>-- * For production code, we recommend ou=
r stable,<br>-- * releases or using the release branch (maint).<br>-- *****=
*************************************************<br>-- Building version: 4=
.0.0.0-46-g57ca4235<br>-- Using install prefix: /usr/local<br>-- Configurin=
g done<br>-- Generating done<br>-- Build files have been written to: /home/=
anyone/uhd/host<br></div><div><br></div><div>5.=C2=A0 Set up Ubuntu depende=
ncies: sudo apt-get install libboost-all-dev libusb-1.0-0-dev doxygen pytho=
n3-docutils python3-mako python3-numpy python3-requests python3-ruamel.yaml=
 python3-setuptools cmake build-essential</div><div>6.=C2=A0 Add the follow=
ing line to .bashrc:=C2=A0=C2=A0export LD_LIBRARY_PATH=3D/usr/local/lib</di=
v><div><br></div><div>FYI -- I am running Ubuntu 18.04 on an HP Omen laptop=
 with an Intel i7-8750H CPU and 32 GB of RAM.</div><div><br></div><div>Can =
anyone tell me what the source of this problem could be?=C2=A0 Any advice o=
r suggestions would be greatly appreciated!</div><div><br></div><div>Thanks=
 &amp; Regards,</div><div>Brendan.</div><div><br></div><div><br></div></div=
>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000009eaa5905b3add056--


--===============5176527597332401582==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5176527597332401582==--

