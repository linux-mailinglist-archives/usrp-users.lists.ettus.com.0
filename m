Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 080572AB156
	for <lists+usrp-users@lfdr.de>; Mon,  9 Nov 2020 07:36:36 +0100 (CET)
Received: from [::1] (port=51796 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kc0n1-0006kb-Ig; Mon, 09 Nov 2020 01:36:31 -0500
Received: from mail-vs1-f41.google.com ([209.85.217.41]:33850)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <brendan.horsfield@vectalabs.com>)
 id 1kc0mx-0006TS-Py
 for usrp-users@lists.ettus.com; Mon, 09 Nov 2020 01:36:27 -0500
Received: by mail-vs1-f41.google.com with SMTP id b129so4366314vsb.1
 for <usrp-users@lists.ettus.com>; Sun, 08 Nov 2020 22:36:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vectalabs-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=+5Cwhxhb1a4X1nlLvSWC2Xn2377UbFScDOdcm3N+OA4=;
 b=m3awGUyv7razkaah7zexJBYo2vFCjvye9JcHj/YFHDFmakO4epmln7kVTIrmHl5IVc
 aDi5WQc577JwJBWH768B7VvDBo4LUkRyEEKYTkRdhFERygeqiTchzqRLmimKnbsy6Zbl
 n65GfEr/c5UB6VOWVS0W/n7CJW7u8jOhwGd3tNfAYqPZynCVZy7gTXRkFEz4CDbraHnn
 YpssuXtuvMCNfka+9trZ9rtBFU/jrNZ9HRtEcBQfD406/i47JFlUhvKerA4ymi1PA4hX
 JojPHZkaGHCDWMzGCywPwpz+i79oT0K0EvJASddBnzdlXLUs2hkl8J35Qlep552CNpXq
 E50Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=+5Cwhxhb1a4X1nlLvSWC2Xn2377UbFScDOdcm3N+OA4=;
 b=IoEFSKp2ViXHNjWyMu3m7FCaq/sVsbEgulo3vnkNI+uR0pIh/IboVlf36PTE8MhgqY
 Pv0fZUrjGrY5UIXC4olzA3q/vv2oCqXnkIJVdIkPB/U9dct+bcgfbroe8bL9HG4/rsX2
 ZwVWkEwZY+nACZifukgBpEApInKDIbbJB6prygcpJP2EpdoEzuekBYPfSpWJTHTX3lJl
 7l4AhuWtZWikcdMJQyp189tuX0gKPAgizPDTPyKW6X/rtYlqE1SWHT2gwMhqzR0JL8IM
 3xChnetTHGVmr9f4d3z9lvSNo4pRh+2qfegv7WXc615mvNqCFX79zj4/3Yg5ZF/H+Q97
 SYVg==
X-Gm-Message-State: AOAM530BhRCqAuHP3nrdJ3ktWJCAl72V1CnZWDOxatSgopnmXfvGLYRb
 gTNwXqLreXOH5JrJFETI80qRPglmeMP/C1nph90XazpgzjE4xdqe
X-Google-Smtp-Source: ABdhPJxlH2fcSZnpbk4PEeags6N7QiMeert5Fsn2+jIqOWJQtFTM7Q4ogtXlYvVIIynnPo6K8ZuMTvXx6bq+YkzBmeM=
X-Received: by 2002:a67:fb8f:: with SMTP id n15mr4035724vsr.30.1604903747085; 
 Sun, 08 Nov 2020 22:35:47 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 9 Nov 2020 16:35:36 +1000
Message-ID: <CALNMZ8Wf-ZjvRRW9soXiF7xqAzxS81+5TA_8kSPYgBKzrrkSxg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Trouble with Python API
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
From: Brendan Horsfield via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Content-Type: multipart/mixed; boundary="===============6836320793253419021=="
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

--===============6836320793253419021==
Content-Type: multipart/alternative; boundary="000000000000be7b2605b3a6c575"

--000000000000be7b2605b3a6c575
Content-Type: text/plain; charset="UTF-8"

Hi Folks,

I would like to write my own Python 3 script to stream Rx samples off my
Ettus B210 USRP.  I have installed the Python API on my Ubuntu laptop, but
I can't seem to get it to work, despite trying numerous ideas I found on
the Ettus Knowledge Base.

For example, check out the following Python interpreter log.  I can call
"import uhd" OK, but the call to uhd.usrp.MultiUSRP() causes an error:

Python 3.7.7 (default, Mar 26 2020, 15:48:22)
[GCC 7.3.0] :: Anaconda, Inc. on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import uhd
>>> my_usrp = uhd.usrp.MultiUSRP("type=b200")
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
AttributeError: module 'uhd' has no attribute 'usrp'
>>>

Another example:  If I try to run the example script
"uhd/host/examples/python/rx_to_file.py", I get the following error:
"ModuleNotFoundError: No module named 'uhd'"

The API installation procedure I have followed to this point is as follows:
1.  python3 -m pip install python-dev-tools --user --upgrade
2.  git clone https://github.com/EttusResearch/uhd.git
3.  pybombs install uhd
4.  cmake $HOME/uhd/host

######################################################
-- # UHD enabled components
-- ######################################################
--   * LibUHD
--   * LibUHD - C API
--   * LibUHD - Python API
--   * Examples
--   * Utils
--   * Tests
--   * USB
--   * B100
--   * B200
--   * USRP1
--   * USRP2
--   * X300
--   * MPMD
--   * N300
--   * N320
--   * E320
--   * E300
--   * OctoClock
--   * Manual
--   * API/Doxygen
--   * Man Pages
-- 
-- ######################################################
-- # UHD disabled components
-- ######################################################
--   * DPDK
-- 
-- ******************************************************
-- * You are building the UHD development master branch.
-- * For production code, we recommend our stable,
-- * releases or using the release branch (maint).
-- ******************************************************
-- Building version: 4.0.0.0-46-g57ca4235
-- Using install prefix: /usr/local
-- Configuring done
-- Generating done
-- Build files have been written to: /home/anyone/uhd/host

5.  Set up Ubuntu dependencies: sudo apt-get install libboost-all-dev
libusb-1.0-0-dev doxygen python3-docutils python3-mako python3-numpy
python3-requests python3-ruamel.yaml python3-setuptools cmake
build-essential
6.  Add the following line to .bashrc:  export
LD_LIBRARY_PATH=/usr/local/lib

FYI -- I am running Ubuntu 18.04 on an HP Omen laptop with an Intel
i7-8750H CPU and 32 GB of RAM.

Can anyone tell me what the source of this problem could be?  Any advice or
suggestions would be greatly appreciated!

Thanks & Regards,
Brendan.

--000000000000be7b2605b3a6c575
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Folks,<div><br></div><div>I would like to write my own =
Python 3 script to stream Rx samples off my Ettus B210 USRP.=C2=A0 I have i=
nstalled the Python API on my Ubuntu laptop, but I can&#39;t seem to get it=
 to work, despite trying numerous ideas I found on the Ettus Knowledge Base=
.</div><div><br></div><div>For example, check out the following Python inte=
rpreter log.=C2=A0 I can call &quot;import uhd&quot; OK, but the call to uh=
d.usrp.MultiUSRP() causes an error:=C2=A0</div><div><br></div><div>Python 3=
.7.7 (default, Mar 26 2020, 15:48:22) <br>[GCC 7.3.0] :: Anaconda, Inc. on =
linux<br>Type &quot;help&quot;, &quot;copyright&quot;, &quot;credits&quot; =
or &quot;license&quot; for more information.<br>&gt;&gt;&gt; import uhd<br>=
&gt;&gt;&gt; my_usrp =3D uhd.usrp.MultiUSRP(&quot;type=3Db200&quot;)<br>Tra=
ceback (most recent call last):<br>=C2=A0 File &quot;&lt;stdin&gt;&quot;, l=
ine 1, in &lt;module&gt;<br>AttributeError: module &#39;uhd&#39; has no att=
ribute &#39;usrp&#39;<br>&gt;&gt;&gt;=C2=A0<br></div><div><br></div><div>An=
other example:=C2=A0 If I try to run the example script &quot;uhd/host/exam=
ples/python/rx_to_file.py&quot;, I get the following error:=C2=A0 &quot;Mod=
uleNotFoundError: No module named &#39;uhd&#39;&quot;=C2=A0</div><div><br><=
/div><div>The API installation procedure I have followed to this point is a=
s follows:</div><div>1.=C2=A0 python3 -m pip install python-dev-tools --use=
r --upgrade</div><div>2.=C2=A0 git clone <a href=3D"https://github.com/Ettu=
sResearch/uhd.git">https://github.com/EttusResearch/uhd.git</a></div><div>3=
.=C2=A0 pybombs install uhd</div><div>4.=C2=A0 cmake $HOME/uhd/host</div><d=
iv><br></div><div>######################################################<br=
>-- # UHD enabled components =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>-- #########=
#############################################<br>-- =C2=A0 * LibUHD<br>-- =
=C2=A0 * LibUHD - C API<br>-- =C2=A0 * LibUHD - Python API<br>-- =C2=A0 * E=
xamples<br>-- =C2=A0 * Utils<br>-- =C2=A0 * Tests<br>-- =C2=A0 * USB<br>-- =
=C2=A0 * B100<br>-- =C2=A0 * B200<br>-- =C2=A0 * USRP1<br>-- =C2=A0 * USRP2=
<br>-- =C2=A0 * X300<br>-- =C2=A0 * MPMD<br>-- =C2=A0 * N300<br>-- =C2=A0 *=
 N320<br>-- =C2=A0 * E320<br>-- =C2=A0 * E300<br>-- =C2=A0 * OctoClock<br>-=
- =C2=A0 * Manual<br>-- =C2=A0 * API/Doxygen<br>-- =C2=A0 * Man Pages<br>--=
 <br>-- ######################################################<br>-- # UHD =
disabled components =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>-- #########################=
#############################<br>-- =C2=A0 * DPDK<br>-- <br>-- ************=
******************************************<br>-- * You are building the UHD=
 development master branch.<br>-- * For production code, we recommend our s=
table,<br>-- * releases or using the release branch (maint).<br>-- ********=
**********************************************<br>-- Building version: 4.0.=
0.0-46-g57ca4235<br>-- Using install prefix: /usr/local<br>-- Configuring d=
one<br>-- Generating done<br>-- Build files have been written to: /home/any=
one/uhd/host<br></div><div><br></div><div>5.=C2=A0 Set up Ubuntu dependenci=
es: sudo apt-get install libboost-all-dev libusb-1.0-0-dev doxygen python3-=
docutils python3-mako python3-numpy python3-requests python3-ruamel.yaml py=
thon3-setuptools cmake build-essential</div><div>6.=C2=A0 Add the following=
 line to .bashrc:=C2=A0=C2=A0export LD_LIBRARY_PATH=3D/usr/local/lib</div><=
div><br></div><div>FYI -- I am running Ubuntu 18.04 on an HP Omen laptop wi=
th an Intel i7-8750H CPU and 32 GB of RAM.</div><div><br></div><div>Can any=
one tell me what the source of this problem could be?=C2=A0 Any advice or s=
uggestions would be greatly appreciated!</div><div><br></div><div>Thanks &a=
mp; Regards,</div><div>Brendan.</div><div><br></div><div><br></div></div>

--000000000000be7b2605b3a6c575--


--===============6836320793253419021==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6836320793253419021==--

