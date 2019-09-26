Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F75DBF3C7
	for <lists+usrp-users@lfdr.de>; Thu, 26 Sep 2019 15:10:55 +0200 (CEST)
Received: from [::1] (port=60644 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iDTXp-0008MS-6C; Thu, 26 Sep 2019 09:10:53 -0400
Received: from mail-lj1-f177.google.com ([209.85.208.177]:40354)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <wandrewp@gmail.com>) id 1iDTXl-0008Eg-NJ
 for usrp-users@lists.ettus.com; Thu, 26 Sep 2019 09:10:49 -0400
Received: by mail-lj1-f177.google.com with SMTP id 7so2106898ljw.7
 for <usrp-users@lists.ettus.com>; Thu, 26 Sep 2019 06:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=KVNDKNCvDRcl/0EKv376VK3Fc6tpgsR3CZ2qUjSo0wg=;
 b=OUP8nnAlW4wLr97nFly1oAYvuEQFQ7wiLH/sNL1O7bFex3UTEsfTp1oG0WCRs6sRba
 8Sekexy7d5Mp2IILEGV4goY8gTQGOyAp/iuvjHQPNtV2/97S6lFAPqUnrKi169SuNrc9
 KBcnB9McsuX4+qwxDu9DuzrQqq/woisMTfYb9gyeB+J3EanbdJn2p3ynTBfuMrcj+g8l
 y3n28zo8IEqTPPw5iGSMb2iSLlPpuQBYkJzbRLMjUAL7PAF4a38ZofjPWudLXv3VU3/0
 up5zVPomB/b0AZCGUvBxUOlZjjDmUjoqqPXtgi0Pr9wrXgK8V1cim3zKmsnf45UR7ZWr
 c5Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=KVNDKNCvDRcl/0EKv376VK3Fc6tpgsR3CZ2qUjSo0wg=;
 b=UL6Z5FP9S/b8+bxqCx6/xNabeOQI80M79Yxw7BXQLYg4ESP0sz8RZXnrldvLkPQhc/
 l67JRS6xEhBDtcfXJje39NT6QJc4Wer37TY+hYwGswPphBZUtNpMR8bDik87orPxMkhU
 2ajUJCm+zT96gYQ6Vl3477ciWtbKUMKEY5Jy/lQKKY8vKLDRdTHGZFkNi49hfsUOR5rm
 dWVu8YsV3Tahh4PtIRgW2GRqH3DK7AzQUMvWDkFjABB80TmXCPOUF3dKbQAS+lKLhF7l
 eI71nRW0kFaCZCXsOToFWYHRCchjjoTjR9Lzx/T6b2BkTEvhQ26bznEJE6rrr85OFS5g
 /MaQ==
X-Gm-Message-State: APjAAAWvldOTHGV3JPOqJuzCx+e11gSuWOnsEyvRe8hw2e8U9sYFujiV
 kAAFm3mhEHmH3Ei5X6JHXQHR6hi1Ucnw6QDvat1Erg==
X-Google-Smtp-Source: APXvYqxH5owUVhK/AI/CmGgvEBci00JQXMbDid6N7X7/t9u2nzk7e2AD7RtGMDdft7jj1UPJYmILE3t4+E6PhTa6Ii0=
X-Received: by 2002:a2e:9585:: with SMTP id w5mr2566745ljh.220.1569503408198; 
 Thu, 26 Sep 2019 06:10:08 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 26 Sep 2019 09:09:55 -0400
Message-ID: <CAB50+dSYrKzjKpSVLCQYEpg-9hrE04qDvkpCkjesDkH7dz-dag@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] USRP B205 Mini FPGA Slow Loading Issue
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
From: Andrew Payne via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andrew Payne <wandrewp@gmail.com>
Content-Type: multipart/mixed; boundary="===============6094606329058477885=="
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

--===============6094606329058477885==
Content-Type: multipart/alternative; boundary="0000000000001e97220593747d1d"

--0000000000001e97220593747d1d
Content-Type: text/plain; charset="UTF-8"

When I plug in the B205 and go to run it for the first time, it takes a
minute or more to download the stock fpga image to the unit.  From that
point forward, each subsequent run it doesn't have to download the FPGA
image.  But when I disconnect it from USB and re-connect, it must be
downloaded again.

Is it possible to get the B205 to permanently store the fpga image onboard
so that it boots right up and is ready to go?

Thanks,
Andrew

--0000000000001e97220593747d1d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">When I plug in the B205 and go to run it for the first tim=
e, it takes a minute or more to download the stock fpga image to the unit.=
=C2=A0 From that point forward, each subsequent run it doesn&#39;t have to =
download the FPGA image.=C2=A0 But when I disconnect it from USB and re-con=
nect, it must be downloaded again.<div><br></div><div>Is it possible to get=
 the B205 to permanently=C2=A0store the fpga image onboard so that it boots=
 right up and is ready to go?<br><br>Thanks,</div><div>Andrew</div></div>

--0000000000001e97220593747d1d--


--===============6094606329058477885==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6094606329058477885==--

