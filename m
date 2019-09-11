Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C4BB01BF
	for <lists+usrp-users@lfdr.de>; Wed, 11 Sep 2019 18:39:40 +0200 (CEST)
Received: from [::1] (port=52150 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i85ec-0002LZ-IW; Wed, 11 Sep 2019 12:39:38 -0400
Received: from mail-ot1-f66.google.com ([209.85.210.66]:46551)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marcus.mueller@ettus.com>)
 id 1i85eY-0002D6-RE
 for usrp-users@lists.ettus.com; Wed, 11 Sep 2019 12:39:34 -0400
Received: by mail-ot1-f66.google.com with SMTP id g19so23148686otg.13
 for <usrp-users@lists.ettus.com>; Wed, 11 Sep 2019 09:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:organization
 :user-agent:mime-version:content-transfer-encoding;
 bh=zKXsw10aFcVWkPCQ/cVJvxy5ThI+NnGizOwQ7Tm2+c8=;
 b=xYsGEinijfyAxIa03BmKPFLNKH5EL7e5OW2CKMzaUZCmWTI7VpANEu92MWxm66ZHO6
 zYEVq13bAtGLN+S72ISFaN/Hm/5pJpt/IU1zYdS409yxQxEcOLkbXXnYvagZQuYabUca
 KS1SMR/nyiCk9brpJD7Ok0+0oPHqxaJ2ThipsPUF83NoBZSaUDYm1J5VOOxLaTE1rrVs
 Ka7o5qkeBttdwdnXwhliu/qFT/9urjP7O2yJsbaOH9WV5QMgNnJNe34P0L+7jawyd2y2
 dAu1FByUbSfB/2TsuFKd+B+bLHUr8UBJWgukEKftitv0WnmNQ0C5wLXI7kGa3097hU7f
 aytw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=zKXsw10aFcVWkPCQ/cVJvxy5ThI+NnGizOwQ7Tm2+c8=;
 b=EL8L7VFCmxeBGk9OCSNwLqM4z/dxc/of3A7iZV+CZDSL1GnIo0zNqMzPSw3+NXhfRh
 jODuTLXJk0Zo3yIfQljHoNg/DUdqzXEK/3Szttn/FJKXq2A+VGmdT5UzoKrBrIG0lFFK
 t6bC+B3SdzmSraBjjO3QymIYnVn2m8MXgMqqt/QxhMVPT+P4oqWxWgXGjN5wt9rcRg7a
 Q3vVmTF+ZgKEL/wN3McUHiiVJloNQOIxhFuP4/VmmwPu0fYORLWwXQFoNLE6MZSAAoGa
 7HaZPst6SH6DTZXsb1NUm2Ko9Hv9s9Mv9VrRDS6TW9boyZfZV1xWj59E1LFWeSa3CozM
 Uhvg==
X-Gm-Message-State: APjAAAXYjzDLNmNcZL0dOHPx6kBm+rnxRVaVpL6c12mrI2q9lWNl6/xK
 zC7yF9zQ+50v3N7YQ2iAC8ZouyEcx6+0Dg==
X-Google-Smtp-Source: APXvYqwE6Oo/WSM+hgE1eZUrha3IVG4GzCTvWu28+zdwt9I1S59nLLGLTK1anO0fI/Y81cTPaw7QbA==
X-Received: by 2002:a9d:4717:: with SMTP id a23mr18096693otf.212.1568219934130; 
 Wed, 11 Sep 2019 09:38:54 -0700 (PDT)
Received: from racer.ni.corp.natinst.com ([130.164.62.197])
 by smtp.gmail.com with ESMTPSA id d1sm1266330oij.35.2019.09.11.09.38.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Sep 2019 09:38:53 -0700 (PDT)
Message-ID: <2f2fa99b6dceede2430c928b0ae13114877854de.camel@ettus.com>
To: David Scott <david.scott@nsl.eu.com>, usrp-users@lists.ettus.com
Date: Wed, 11 Sep 2019 11:38:53 -0500
In-Reply-To: <9bbb6b44-3e5f-2074-e8f3-b40fbde2b668@nsl.eu.com>
References: <9bbb6b44-3e5f-2074-e8f3-b40fbde2b668@nsl.eu.com>
Organization: Ettus Research
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: Re: [USRP-users] Pybombs UHD install for development machine CMake
 version failure
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: Marcus =?ISO-8859-1?Q?M=FCller?= <marcus.mueller@ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

Dear David,

I've seen that happen on specific Ubuntu versions, where they somehow
missed to clean up / mark conflict between CMake 2.x packages and newer
CMake (I'm perpetually disappointed by Canonical). Make twice as sure
that you only got one CMake installed - if this is actually Ubuntu,
"apt search cmake" might be the way to start.

Best regards,
Marcus

On Wed, 2019-09-11 at 16:42 +0100, David Scott via USRP-users wrote:
> Hi all,
> 
> I have recently acquired a USRP E312 and have been following the 
> quickstart guide at: -
> 
> https://kb.ettus.com/Software_Development_on_the_E310_and_E312
> 
> The relevant commands being: -
> 
>    $ sudo pip install git+https://github.com/gnuradio/pybombs.git
>    $ pybombs recipes add gr-recipes 
> git+https://github.com/gnuradio/gr-recipes.git
>    $ pybombs recipes add ettus 
> https://github.com/EttusResearch/ettus-pybombs.git
>    $ sudo dpkg-reconfigure dash # select NO
>    $ pybombs prefix init ~/prefix -R e3xx-rfnoc -a e300
> 
> Everything proceeds well up until the CMake is carried out at which
> it 
> complains that the installed version of CMake is below the minimum.
> The 
> output log is : -
> 
> 
> 1511750 kB / 1511750 kB 
> (100%))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
> ))))))))))))
> 
> [INFO] Installing SDK 
> `e3xx-release4-
> sdk'))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
> 
> The directory "/home/david/prefix" already contains a SDK for this 
> architecture.)))))))))))))))))))
> 
> If you continue, existing files will be overwritten! 
> Proceed[y/N]?Y))))))))))))))))))))))))))))))))))))))Extracting 
> SDK...done)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
> )))))))))))))))))))))))))
> 
> Setting it 
> up...done))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
> )))))))))))))))))))))))))
> 
> SDK has been successfully set up and is ready to be 
> used.))))))))))))))))))))))))))))))))))))))))))))))))
> 
> [INFO] Cleaning up 
> files...)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
> )))))))))))))))))
> 
> [INFO] Prefix Python version is: 
> 2.7.15)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
> )))
> 
> [INFO] Installing default packages for 
> prefix...)))))))))))))))))))))))))))))))))))))))))))))))))))))))))
> 
> [INFO] 
> )))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
> ))))))))))))))))))))))))))))) 
> - uhd)))))))))))))))))))))
>    - gnuradio
>    - gr-ettus
> [INFO] Install python-apt to speed up apt processing.
> [INFO] Phase 1: Creating install tree and installing binary packages:
> Install tree:
> \- gr-ettus
>     |
>     +- uhd
>     |
>     \- gnuradio
>        |
>        \- uhd
> [INFO] Phase 1 complete: All binary dependencies installed.
> [INFO] Phase 2: Recursively installing source packages to prefix:
> [INFO] Installing package: uhd
> [WARNING] A source build for package uhd was requested, but binary 
> install was found!
> Install uhd from source despite binary install available Y/[N]?
> [INFO] Install python-apt to speed up apt processing.
> [WARNING] Build dir already exists:
> /home/david/prefix/src/uhd/host/build
> Configuring: (100%) 
> [====================================================================
> ==============]
> [WARNING] Configuration failed. Re-trying with higher verbosity.
> CMake Error at CMakeLists.txt:13 (cmake_minimum_required):
>    CMake 3.5.1 or higher is required.  You are running version
> 2.8.12.2
> 
> -- Configuring incomplete, errors occurred!
> 
> Running cmake --version on my system shows: -
> 
>    cmake version 3.10.2
> 
>    CMake suite maintained and supported by Kitware
> (kitware.com/cmake).
> 
> I have no idea why pybombs thinks I am running cmake 2.8. I have 
> searched online and can find no reference to the issue. Has anyone
> else 
> encountered this issue or does anyone know of a solution?
> 
> Thanks,
> 
> David
> 
> 
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
