Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 56940E604F
	for <lists+usrp-users@lfdr.de>; Sun, 27 Oct 2019 03:37:31 +0100 (CET)
Received: from [::1] (port=60836 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iOYQr-0007R6-T7; Sat, 26 Oct 2019 22:37:29 -0400
Received: from resqmta-po-03v.sys.comcast.net ([96.114.154.162]:49260)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <w6rz@comcast.net>) id 1iOYQo-0007H4-Jp
 for usrp-users@lists.ettus.com; Sat, 26 Oct 2019 22:37:26 -0400
Received: from resomta-po-17v.sys.comcast.net ([96.114.154.241])
 by resqmta-po-03v.sys.comcast.net with ESMTP
 id OYJxill6pBgtrOYQ9izzhB; Sun, 27 Oct 2019 02:36:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1572143805;
 bh=sS/CVXOVgsD7jj9mErYUiHBFmeOndlS77OSmcNDXZ0M=;
 h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=xLceSKeDaZC8XvXincZ38iCAeyScgAumZgzmF6/yy7vcoRoEz5idC0/s5wKeSl+oG
 LESd4bSXm1ecdyfXZi9MqspLTMbd5TmJ2sim/1i6thRog/L3KuvkQmjy1P3jobq26y
 CIrj+OPb2qdbTrVO8+tTfqm6RLuyBpQb0uWfG4RgNgR07yoHUJLRLWlP02S9W30eEg
 cvXD4PhZPbvvOx6o/1PMkuSl2scv5jYCnUW4NGfQDwvdKYsHtKoqgOC25ovtPlAPYy
 lFMDxLtVzimYSyjwza6xWQrrT3moyRlkOd87889TZUWwin7MTzIgopXG+iS7auPZ2q
 TDNHeergAFO7Q==
Received: from [IPv6:2601:647:4200:ea30:31ba:708e:e4af:98ac]
 ([IPv6:2601:647:4200:ea30:31ba:708e:e4af:98ac])
 by resomta-po-17v.sys.comcast.net with ESMTPSA
 id OYQ9i0W7lIVXbOYQ9irFsZ; Sun, 27 Oct 2019 02:36:45 +0000
X-Xfinity-VMeta: sc=0;st=legit
To: usrp-users@lists.ettus.com
References: <3dee688a.127f6.16e0b040061.Coremail.hengzhang@shu.edu.cn>
Message-ID: <b4706a99-66e9-db95-ca5d-da1313b7f0ce@comcast.net>
Date: Sat, 26 Oct 2019 19:36:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <3dee688a.127f6.16e0b040061.Coremail.hengzhang@shu.edu.cn>
Content-Language: en-US
Subject: Re: [USRP-users] uhd make failed
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
From: Ron Economos via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ron Economos <w6rz@comcast.net>
Content-Type: multipart/mixed; boundary="===============2841101938552753359=="
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
--===============2841101938552753359==
Content-Type: multipart/alternative;
 boundary="------------7AE99DC233CF01DE333A442A"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------7AE99DC233CF01DE333A442A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

You need python-setuptools.

sudo apt-get install python-setuptools

Ron

On 10/26/19 19:20, 张恒 via USRP-users wrote:
> Dear all,
>
>
> When I execute 'make' in 'uhd/host/build' folder, I met error
> '[100%] Built target pyuhd
> [100%] Generating build/timestamp
> python/CMakeFiles/pyuhd_library.dir/build.make:64: recipe for target 
> 'python/build/timestamp' failed
> make[2]: *** [python/build/timestamp] Error 1
> CMakeFiles/Makefile2:3997: recipe for target 
> 'python/CMakeFiles/pyuhd_library.dir/all' failed
> make[1]: *** [python/CMakeFiles/pyuhd_library.dir/all] Error 2
> Makefile:160: recipe for target 'all' failed
> make: *** [all] Error 2'
>
> What's the problem of it?
>
>
> Regards,
> Heng
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------7AE99DC233CF01DE333A442A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>You need python-setuptools.</p>
    <p>sudo apt-get install python-setuptools</p>
    <p>Ron<br>
    </p>
    <div class="moz-cite-prefix">On 10/26/19 19:20, 张恒 via USRP-users
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:3dee688a.127f6.16e0b040061.Coremail.hengzhang@shu.edu.cn">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      Dear all,
      <div><br>
      </div>
      <div><br>
      </div>
      <div>When I execute 'make' in 'uhd/host/build' folder, I met
        error </div>
      <div>'[100%] Built target pyuhd</div>
      <div>[100%] Generating build/timestamp</div>
      <div>python/CMakeFiles/pyuhd_library.dir/build.make:64: recipe for
        target 'python/build/timestamp' failed</div>
      <div>make[2]: *** [python/build/timestamp] Error 1</div>
      <div>CMakeFiles/Makefile2:3997: recipe for target
        'python/CMakeFiles/pyuhd_library.dir/all' failed</div>
      <div>make[1]: *** [python/CMakeFiles/pyuhd_library.dir/all] Error
        2</div>
      <div>Makefile:160: recipe for target 'all' failed</div>
      <div>make: *** [all] Error 2'</div>
      <div><br>
      </div>
      <div>What's the problem of it?</div>
      <div><br>
      </div>
      <div><br>
      </div>
      <div>Regards,</div>
      <div>Heng</div>
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

--------------7AE99DC233CF01DE333A442A--


--===============2841101938552753359==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2841101938552753359==--

