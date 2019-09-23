Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BB44CBB9AF
	for <lists+usrp-users@lfdr.de>; Mon, 23 Sep 2019 18:36:33 +0200 (CEST)
Received: from [::1] (port=36516 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iCRKC-0007Jq-19; Mon, 23 Sep 2019 12:36:32 -0400
Received: from mail-ua1-f47.google.com ([209.85.222.47]:44366)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jbmsdr@gmail.com>) id 1iCRK9-0007Cm-2C
 for usrp-users@lists.ettus.com; Mon, 23 Sep 2019 12:36:29 -0400
Received: by mail-ua1-f47.google.com with SMTP id n2so4525710ual.11
 for <usrp-users@lists.ettus.com>; Mon, 23 Sep 2019 09:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=ER9DbV4fqGx/4C5f/B7NrJxlnSMPPByYKawwQLdI9mE=;
 b=sI7AjbNOMlwm5hSFdXqm+WQgyO8fMn2Gbp/SZ1c5iJRMQhKRGsqyUkPyX3XT33vdt6
 4LIImZqrrEjhbV0rwkq7/ijrUuyqbsEXJHoa5by/uslEAUd0ZXgsvbh2k2010zVr6JQA
 1YFxi4IXXbLBZiZp+B4YmtnFjANkJp+rRvesg+exosguQHhb7/1uSMyc6ympE8Te4tKC
 R65qeMY0LxO7YiPS/zBFfJj+aFAfCXBG8HKww6FPn32MmSd8/TP3LDZJ0cw5kCKReqD9
 Keied1XYugDO+p4FQvYxWUG4f4zBTNkKiuja/SuHjJ/qhqKHJC5VgR/CB3rXaLEpwJv8
 3tog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=ER9DbV4fqGx/4C5f/B7NrJxlnSMPPByYKawwQLdI9mE=;
 b=b+LrAAmsIVooSS6jHSMj5oXnkkyrxJeTTLrYUpYWrWb/bkvHwbhxx9ywmGLk+Z1l4u
 F2mqBn5X3i21h6MqqY4ti1f/Snhcie3mxTi47cNCP+XMFpi9p/1MzCH5L8pzeu/eN67Y
 zgt7jTGWtnFNjJsBc2WN5Q+NuAm8Q7zdUnqaOZ/pc/diuo4z/nStLmfG8Fal98e6TSfI
 2zQBKpm/Hj0THA2/QpcK/+oa8zx+nbyJowrP4Gbtv6gqCVc47vt70A+ibnwOpKgQK7mB
 kebZtfINlvgQsFWgUSYep1Rm+nBxJ2zeE2hmvJgM21eksWK1TheTe9f6HynuyKhq4zBV
 q+Fg==
X-Gm-Message-State: APjAAAWkiP4dVjXBOV4ZvapzM3Fzil+JeyvRw89Uwzc1GnbVd6ta+A/+
 OM319hp1VKOLAgdq7ve6XPXsT7aJhWj7HhnCYhlcj+IC
X-Google-Smtp-Source: APXvYqwIxr68JowX7e1CkjaDJg5d1EZUOt+GFqXj768JKURP2Zuz3SgXGI05JIHOSFZGcpLGEr28KwJEg7APE/hcO2g=
X-Received: by 2002:ab0:2455:: with SMTP id g21mr149330uan.6.1569256548141;
 Mon, 23 Sep 2019 09:35:48 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 23 Sep 2019 12:35:37 -0400
Message-ID: <CA+1FM8oh1UuYRK17G11j0sfX1Utt-APuZvysaPEiMRS5z2vqwg@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] Building UHD with DPDK support
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
From: Josh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Josh <jbmsdr@gmail.com>
Content-Type: multipart/mixed; boundary="===============0006136223900754959=="
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

--===============0006136223900754959==
Content-Type: multipart/alternative; boundary="0000000000001d0e7205933b03ae"

--0000000000001d0e7205933b03ae
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm in the process of building UHD with DPDK support, and run into the
following build error:

../lib/libuhd.so.3.15.0: undefined reference to `numa_available'
../lib/libuhd.so.3.15.0: undefined reference to `get_mempolicy'
../lib/libuhd.so.3.15.0: undefined reference to `numa_set_localalloc'
../lib/libuhd.so.3.15.0: undefined reference to `numa_bitmask_free'
../lib/libuhd.so.3.15.0: undefined reference to `set_mempolicy'
../lib/libuhd.so.3.15.0: undefined reference to `numa_allocate_nodemask'
../lib/libuhd.so.3.15.0: undefined reference to `numa_set_preferred'

DPDK 17.11 is installed on my system from source, and CMake finds it, but
once I kick off the UHD build (either 3.14 or master) I get the errors
shown above when it is linking libraries to libuhd.

Any help would be appreciated.

Thanks,
Josh

--0000000000001d0e7205933b03ae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I&#39;m in the proces=
s of building UHD with DPDK support, and run into the following build error=
:</div><div><br></div><div>../lib/libuhd.so.3.15.0: undefined reference to =
`numa_available&#39;<br>../lib/libuhd.so.3.15.0: undefined reference to `ge=
t_mempolicy&#39;<br>../lib/libuhd.so.3.15.0: undefined reference to `numa_s=
et_localalloc&#39;<br>../lib/libuhd.so.3.15.0: undefined reference to `numa=
_bitmask_free&#39;<br>../lib/libuhd.so.3.15.0: undefined reference to `set_=
mempolicy&#39;<br>../lib/libuhd.so.3.15.0: undefined reference to `numa_all=
ocate_nodemask&#39;<br>../lib/libuhd.so.3.15.0: undefined reference to `num=
a_set_preferred&#39;</div><div><br></div><div>DPDK 17.11 is installed on my=
 system from source, and CMake finds it, but once I kick off the UHD build =
(either 3.14 or master) I get the errors shown above when it is linking lib=
raries to libuhd.</div><div><br></div><div>Any help would be appreciated.<b=
r></div><div><br></div><div>Thanks,</div><div>Josh<br></div><div><br></div>=
<div><br></div></div>

--0000000000001d0e7205933b03ae--


--===============0006136223900754959==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0006136223900754959==--

