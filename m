Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 729C42201A6
	for <lists+usrp-users@lfdr.de>; Wed, 15 Jul 2020 03:09:38 +0200 (CEST)
Received: from [::1] (port=55438 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jvVt7-00038C-6T; Tue, 14 Jul 2020 21:07:09 -0400
Received: from resqmta-po-12v.sys.comcast.net ([96.114.154.171]:56986)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <w6rz@comcast.net>) id 1jvVss-00035P-0j
 for usrp-users@lists.ettus.com; Tue, 14 Jul 2020 21:06:54 -0400
Received: from resomta-po-18v.sys.comcast.net ([96.114.154.242])
 by resqmta-po-12v.sys.comcast.net with ESMTP
 id vUavj9DGyVKrYvVrdjlnjd; Wed, 15 Jul 2020 01:05:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1594775137;
 bh=ilJZCYXyzHgW24i0XIiTb7NRS20V+rTZMdQAqRPNR+0=;
 h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=NQAAf8LNE+Y84gjy4whu9P7Bcpbzcqf54CVZBq1CEgwa68Tm6gfukzNqdwUgnzM1U
 iLbYW1x7v8Ws5/wldnx0d+6Z5zGWJuHfZPPwSKwszbQooMeFKv/R2fW4hte9h6B0zP
 RuqtFIKJxoX+lXUOIW8/D4dWaFJcR5yvGuRu07GcrXj/pmym0oxkPd8k68B2YHyCDO
 XDhn+WmaqBPimcYt1p5bf/r/ALXNFXbTZr9I4Cky5m25JG2C+UT82o1xHc6q/I6okK
 aMHCwj20VwVgsKut/qKzjdJ6LiHOSKqVtMrtJgJFzt53gvZ59wWXkTJMKBEWPfo+3r
 XasJzmlOEVndw==
Received: from [IPv6:2601:647:4200:ea30:a0e0:ac9c:a460:dda]
 ([IPv6:2601:647:4200:ea30:a0e0:ac9c:a460:dda])
 by resomta-po-18v.sys.comcast.net with ESMTPSA
 id vVrbjviVYEb82vVrdjmMxS; Wed, 15 Jul 2020 01:05:37 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: usrp-users@lists.ettus.com
References: <Mailbird-2d4fe5f5-044e-4c4d-b2f9-16306054419b@gmail.com>
Message-ID: <8fc84b70-fc29-6b85-1aac-d9586e088b26@comcast.net>
Date: Tue, 14 Jul 2020 18:05:35 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <Mailbird-2d4fe5f5-044e-4c4d-b2f9-16306054419b@gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Compiling UHD Error
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
From: Ron Economos via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ron Economos <w6rz@comcast.net>
Content-Type: multipart/mixed; boundary="===============3828373368507507292=="
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

This is a multi-part message in MIME format.
--===============3828373368507507292==
Content-Type: multipart/alternative;
 boundary="------------0DAB009AFB1700CF3E679C55"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0DAB009AFB1700CF3E679C55
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Take a look at:

https://files.ettus.com/manual/page_build_guide.html

Typically, for Linux it's:

git clone https://github.com/EttusResearch/uhd.git

cd uhd

git checkout v3.15.0.0 -b tmp

cd host

mkdir build

cd build

cmake ../

make

sudo make install

sudo ldconfig

It's highly recommended to checkout a release. The master branch is a 
development branch and can be broken.

Ron W6RZ

On 7/14/20 17:23, Larry Dodd via USRP-users wrote:
> Using Cmake I get the following error.
> CMake Error: The source directory 
> "C:/uhd-master/uhd-master/build/CMakeFiles" does not appear to contain 
> CMakeLists.txt.
> Specify --help for usage, or press the help button on the CMake GUI.
> I searched the computer and can not find CMakeFiles.txt anywhere.
> Larry, K4LED
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------0DAB009AFB1700CF3E679C55
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Take a look at:</p>
    <p><a class="moz-txt-link-freetext" href="https://files.ettus.com/manual/page_build_guide.html">https://files.ettus.com/manual/page_build_guide.html</a></p>
    <p>Typically, for Linux it's:</p>
    <p>git clone <a class="moz-txt-link-freetext" href="https://github.com/EttusResearch/uhd.git">https://github.com/EttusResearch/uhd.git</a></p>
    <p>cd uhd</p>
    <p>git checkout v3.15.0.0 -b tmp</p>
    <p>cd host</p>
    <p>mkdir build</p>
    <p>cd build</p>
    <p>cmake ../</p>
    <p>make</p>
    <p>sudo make install</p>
    <p>sudo ldconfig</p>
    <p>It's highly recommended to checkout a release. The master branch
      is a development branch and can be broken.</p>
    <p>Ron W6RZ<br>
    </p>
    <div class="moz-cite-prefix">On 7/14/20 17:23, Larry Dodd via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:Mailbird-2d4fe5f5-044e-4c4d-b2f9-16306054419b@gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div id="__MailbirdStyleContent" style="font-size:
        10pt;font-family: Arial;color: #000000">Using Cmake I get the
        following error.
        <div><span style=" color:#ff0000;">CMake Error: The source
            directory "C:/uhd-master/uhd-master/build/CMakeFiles" does
            not appear to contain CMakeLists.txt.<br>
            Specify --help for usage, or press the help button on the
            CMake GUI.</span><br>
        </div>
        <div><span style=" color:#ff0000;">I searched the computer and
            can not find CMakeFiles.txt anywhere.</span></div>
        <div><span style=" color:#ff0000;">Larry, K4LED</span></div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------0DAB009AFB1700CF3E679C55--


--===============3828373368507507292==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3828373368507507292==--

