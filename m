Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C196A65C9
	for <lists+usrp-users@lfdr.de>; Wed,  1 Mar 2023 03:53:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 93765383B91
	for <lists+usrp-users@lfdr.de>; Tue, 28 Feb 2023 21:53:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677639194; bh=CSeB8OWvMNFrvvxtKsnkqJ7dhWg+CxC0tkBqrMDz5lc=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=FZVpBtURHOjlqo4sVb1ybbrJoxnn10AgE5L/1CNdpAPigmc4AV9B55z4Jj+221b0b
	 znxd3XuF7FU6rkBu8XLtNtCEDVK6IVxs8xh4Pk2kYC2/c352qKyiHQfsAGQdPf8Bp8
	 f9mefYxkeIxP98lVVyBCE4qMUNd8te5yK7eF2si9RUyjXWQHlg2QlrjXCCkl5z4uSr
	 6mBaJdVjswmTOgKs7wZObcLu3NSRQgL1jYewdOKSAdvczp3KX0hYJN06Y69SImB4nz
	 IXenS7zwHVwnJqEMhWG6bcXVZG+2yhFOzuNosCcguCeFMkYdzG1IuH7Cdyx74G146a
	 GV6Sb0kxmKkSA==
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 981D2383B91
	for <usrp-users@lists.ettus.com>; Tue, 28 Feb 2023 21:53:07 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=g-ecc-u-tokyo-ac-jp.20210112.gappssmtp.com header.i=@g-ecc-u-tokyo-ac-jp.20210112.gappssmtp.com header.b="Crh+Uz7n";
	dkim-atps=neutral
Received: by mail-ed1-f45.google.com with SMTP id i34so48238582eda.7
        for <usrp-users@lists.ettus.com>; Tue, 28 Feb 2023 18:53:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=g-ecc-u-tokyo-ac-jp.20210112.gappssmtp.com; s=20210112; t=1677639186;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rvi5uXEWMp63H9zoWAmpx4rCUDAHRzP2S7tYrFEqi04=;
        b=Crh+Uz7nZX1NAfEcFlWDGiW3HFzQQNx+2W3fEi0w2jVsRrT+ZNxdT9Vq9pybDZGwa6
         RQbUyRcGS9DP4c/B6DD/lIbWr657raix8XyPZkU9F19BEZ3xHlQm5jDYyak/FmVF/WAc
         Yi523/5fVgsxoVuOT5d3fC4h3V6xuePAIg2DDLRfgapAaR0ExuurPfOgOw72OFF1juCe
         d1waPwpgEm2ajKQZYm2j3+ev7NUONwcRC2a0hBg2o6eDza09geh7zlzl12krH3nA73T5
         lvUQskD9531qarDTCEzYcaWIdgqAORdOR3r6KdTyDm/4KLrB44A9/BVKNkqOPygopxek
         JFng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677639186;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rvi5uXEWMp63H9zoWAmpx4rCUDAHRzP2S7tYrFEqi04=;
        b=zyVWhqNaMj7PUKx6yw7TFyfY/L9oSP8kXe4fqwgAFEAmySJ5xh5W+WMusCzrirjAlJ
         cSUogHKfMRvGtyJSMoDxjW0tBtHDO8fZq9WdquNeoTr6ZfpoeX2OHUxQM0yeCoZPpbdz
         TKXDQ1Ce0RxjWT991MhxupUBbmHBQ8uB7Jf4+LYPzgOou2eXtDirXZLTQNfdsUAW0Dwd
         8d+0wOwDC5iYKGXaPstb2SQiVc4JXvgsQzsmXNSQyNevBWZA7ikyfVxCL1tcUDqTlVe1
         ksKnK8LCGWjBwWl7NpZLegoU6gfnikg1A4fRClMqipSrK6q6CbX0rv83KfXps2+x2Iqe
         2evw==
X-Gm-Message-State: AO0yUKWOoyI1PrYDfDfH8H4UaDa0QUIUMXlsCTkD67ecQWN1NCMa7Ryw
	mFTa0GKOW/+OhS/lkwRfM50PGjT0YNIYiaOrGios7oa9W4QeYYp7
X-Google-Smtp-Source: AK7set+dPZ78VaPrQNNeuLTyHBgs61rkywLWjG/0B73uoVajtsWhDylwBi9KsWUAeQf+BrJcne//Kkb1sxVGaNc+4H8=
X-Received: by 2002:a05:6402:ea2:b0:4af:6e08:30c with SMTP id
 h34-20020a0564020ea200b004af6e08030cmr3937240eda.4.1677639186013; Tue, 28 Feb
 2023 18:53:06 -0800 (PST)
MIME-Version: 1.0
From: "AERMAN TUERXUN." <armantursun@g.ecc.u-tokyo.ac.jp>
Date: Wed, 1 Mar 2023 11:52:54 +0900
Message-ID: <CAOcHjoJ0sZ5BSRcJF4eKDhgwd0gWi6C102g-B9ANt+wJy1d7RQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 5PDMKASKITLFHNZB6JDQTAKDSOJLM5KN
X-Message-ID-Hash: 5PDMKASKITLFHNZB6JDQTAKDSOJLM5KN
X-MailFrom: armantursun@g.ecc.u-tokyo.ac.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] No module named 'uhd'
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5PDMKASKITLFHNZB6JDQTAKDSOJLM5KN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4579881117369855373=="

--===============4579881117369855373==
Content-Type: multipart/alternative; boundary="000000000000be7f1805f5cdcfc6"

--000000000000be7f1805f5cdcfc6
Content-Type: text/plain; charset="UTF-8"

Hi USRP users,

I am currently developing an OOT RFNoC module.
When I tried to build a custom image, it gave me errors as below.
I checked the python path, and it seems fine.
Is there anyone that has any idea of the reason for this?
I am using n310 with uhd v4.2.0.0.
(I checked with uhd4.0, and didn't encounter this problem).

Thanks in advance.
Best regards.

Traceback (most recent call last):
  File "/usr/local/bin/rfnoc_image_builder", line 29, in <module>
    from uhd.imgbuilder import image_builder
ModuleNotFoundError: No module named 'uhd'
make[3]: *** [icores/CMakeFiles/n310_rfnoc_image_core.dir/build.make:57:
icores/CMakeFiles/n310_rfnoc_image_core] Error 1
make[2]: *** [CMakeFiles/Makefile2:300:
icores/CMakeFiles/n310_rfnoc_image_core.dir/all] Error 2
make[1]: *** [CMakeFiles/Makefile2:307:
icores/CMakeFiles/n310_rfnoc_image_core.dir/rule] Error 2
make: *** [Makefile:203: n310_rfnoc_image_core] Error 2

--000000000000be7f1805f5cdcfc6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi USRP users,</div><div><br></div><div>I am currentl=
y developing an OOT RFNoC module.</div><div>When I tried to build a custom =
image, it gave me errors as below.</div><div>I checked the python path, and=
 it seems fine.</div><div>Is there anyone that has any idea of the reason f=
or this?<br></div><div>I am using n310 with uhd v4.2.0.0.</div><div>(I chec=
ked with uhd4.0, and didn&#39;t encounter this problem).<br></div><div><br>=
</div><div>Thanks in advance.</div><div>Best regards.<br></div><div><br></d=
iv><div>Traceback (most recent call last):<br>=C2=A0 File &quot;/usr/local/=
bin/rfnoc_image_builder&quot;, line 29, in &lt;module&gt;<br>=C2=A0 =C2=A0 =
from uhd.imgbuilder import image_builder<br>ModuleNotFoundError: No module =
named &#39;uhd&#39;<br>make[3]: *** [icores/CMakeFiles/n310_rfnoc_image_cor=
e.dir/build.make:57: icores/CMakeFiles/n310_rfnoc_image_core] Error 1<br>ma=
ke[2]: *** [CMakeFiles/Makefile2:300: icores/CMakeFiles/n310_rfnoc_image_co=
re.dir/all] Error 2<br>make[1]: *** [CMakeFiles/Makefile2:307: icores/CMake=
Files/n310_rfnoc_image_core.dir/rule] Error 2<br>make: *** [Makefile:203: n=
310_rfnoc_image_core] Error 2</div><div class=3D"gmail-yj6qo"></div><div cl=
ass=3D"gmail-adL"><br><br></div></div>

--000000000000be7f1805f5cdcfc6--

--===============4579881117369855373==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4579881117369855373==--
