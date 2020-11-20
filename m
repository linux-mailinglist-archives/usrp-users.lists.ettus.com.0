Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ADA52BAB67
	for <lists+usrp-users@lfdr.de>; Fri, 20 Nov 2020 14:39:47 +0100 (CET)
Received: from [::1] (port=47392 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kg6dd-0006yf-VN; Fri, 20 Nov 2020 08:39:45 -0500
Received: from mail-lf1-f48.google.com ([209.85.167.48]:43448)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <cmdjbst@gmail.com>) id 1kg6dZ-0006rM-VZ
 for usrp-users@lists.ettus.com; Fri, 20 Nov 2020 08:39:42 -0500
Received: by mail-lf1-f48.google.com with SMTP id d17so13450458lfq.10
 for <usrp-users@lists.ettus.com>; Fri, 20 Nov 2020 05:39:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=KLb1ZNsUkt7ptYwMBZDpkz6I2WfV7l2wd7qbpRnGNJ0=;
 b=arfvam8t3a/hR5rSmwBRl+oMtz6d0K3iHyWDSYkJYrEdyvH8eD47DWvQM+sSE3O+pt
 /70nRKtzQModwi/JpflcqbNBZubNOOy+x4SvBRHo5rquxvqnOoT8H5sxXcwik8vNcHVQ
 iVKupnw9xeo+Uj7aC3oYDt5L2zoKyq/BCfH8eXJSddqUY6LCqQOKPuthq4mxyS1KZ1ag
 OLENoeu4/0d6D7wszlqy9sl0a5MdDiZ/BajirLaBMhHEs+AvBC3eg3JIof0QlNhXIlOM
 GoimnuR8NqNWEybQoJ6sFAcgi2rAz6gi71PIgcr2Q3C/+9ncVltFwOCFddVf50vJAn2a
 si/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=KLb1ZNsUkt7ptYwMBZDpkz6I2WfV7l2wd7qbpRnGNJ0=;
 b=fgtZmCwuoIN10nO2FLIzbclcsePi+igux6RFpd18rhmcgT7Ykju4AsLBQbGaPEGq6O
 zYyAXOzXbnMYEHnee3bAfkMcRcGGqy3iDu7SoeL9TURjfL/2a/5bDpcjlm/2EyO1D1lx
 ztBLryKoiS24Th1beagvxErVFEwXwTrP3aPT00bvPH2u3yFwmVCiqFI1qCsNCIkXG4EJ
 FJtyJNpFMowHfjoMfn27Q6gjeuKz8IzMO7m/uW6hfG04A6MsgIXx9pWEOuyJAiBIn+VA
 NvzenpsCjOeHnAeLDlATQKGtTi9kkTCS6oXI0HEqeQk5IBg4TrjzvmIO9sBxBc9JljmT
 Ypdw==
X-Gm-Message-State: AOAM531qzKkhrOXLjhcjF10xOO38LeMxyj6CfvoMFeKsV6X6RWzHkwaA
 vPBKXxRtRGvn73UP44uDVFVyY7xMtZsmtxh+rAdY0iq6
X-Google-Smtp-Source: ABdhPJxLvMGvIFwj8hgBV4n7pnVe5THfEvAVcEooToU650zyqquBUeZ0+pdCAwYnlrF4m9I604wqO+NKT0S2/OXKBLI=
X-Received: by 2002:a19:ca19:: with SMTP id a25mr8775211lfg.89.1605879540058; 
 Fri, 20 Nov 2020 05:39:00 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 20 Nov 2020 21:38:48 +0800
Message-ID: <CACfkGzVeSYTphqtSXX=UU+Jk2qTJMUynTpphmxQRZN-ijH8OXw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] B200 PPS signal question
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
From: =?utf-8?b?57+B5YGJ5ZC+IHZpYSBVU1JQLXVzZXJz?= <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?57+B5YGJ5ZC+?= <cmdjbst@gmail.com>
Content-Type: multipart/mixed; boundary="===============8822568750104070190=="
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

--===============8822568750104070190==
Content-Type: multipart/alternative; boundary="00000000000089952305b489f74f"

--00000000000089952305b489f74f
Content-Type: text/plain; charset="UTF-8"

Hi,

I have a question about the PPS inputs on b200 and b200mini models.

I want to synchronize time for two b200 units. I connected the PPS to a
external GPS module. The Ref port was left open(Not used). Then I set the
system time with set_time_next_pps command.  On another b200, the
configuration was the same. The problem is, after both device time has been
set to PPS with the same time spec. Their system time start to drift away
after a while. In other words, the PPS signal seems not regulating the
system time on a second basis.

BTW, I have measured the PPS timing between these gps devices and it was
only 10ns off.

I've read somewhere in the usrp maling list that the b200mini with only PPS
input can be used to regulate internal PLL clock. Does this mean for every
PPS edge it is adjusting the internal clock and make the system time stable
between two units? Can we achieve the same regulation effect on b200?

I already knew that using a GPSDO with b200 is the way to go for the best
synchronization result. But I didn't go that way because 1.GPSDO can break
my budget and 2. I only require hardware time sync on every PPS edge.

I'm grateful for any suggestions. Thanks.

--00000000000089952305b489f74f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,=C2=A0<div dir=3D"auto"><br><div dir=3D"auto">I have a=
 question about the PPS inputs on b200 and b200mini models.=C2=A0</div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">I want to synchronize time for tw=
o b200 units. I connected the PPS to a external GPS module. The Ref port wa=
s left open(Not used). Then I set the system time with set_time_next_pps co=
mmand.=C2=A0 On another b200, the configuration was the same. The problem i=
s, after both device time has been set to PPS with the same time spec. Thei=
r system time start to drift away after a while. In other words, the PPS si=
gnal seems not regulating the system time on a second basis.</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">BTW, I have measured the PPS timing b=
etween these gps devices and it was only 10ns off.</div><div dir=3D"auto"><=
br></div><div dir=3D"auto">I&#39;ve read somewhere in the usrp maling list =
that the b200mini with only PPS input can be used to regulate internal PLL =
clock. Does this mean for every PPS edge it is adjusting the internal clock=
 and make the system time stable between two units? Can we achieve the same=
 regulation effect on b200?=C2=A0</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">I already knew that using a GPSDO with b200 is the way to go for =
the best synchronization result. But I didn&#39;t go that way because 1.GPS=
DO can break my budget and 2. I only require hardware time sync on every PP=
S edge.</div><div dir=3D"auto"><br></div><div dir=3D"auto">I&#39;m grateful=
 for any suggestions. Thanks.</div></div></div>

--00000000000089952305b489f74f--


--===============8822568750104070190==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8822568750104070190==--

