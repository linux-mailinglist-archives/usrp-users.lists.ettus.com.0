Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9268FAB2083
	for <lists+usrp-users@lfdr.de>; Sat, 10 May 2025 02:35:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 61F25385D75
	for <lists+usrp-users@lfdr.de>; Fri,  9 May 2025 20:35:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746837342; bh=rvzsqIiIoNLN7qJrQGVDx6tHfGqwYmtYnIDX1gZXbLc=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ayre2Wa9rNYDO2YIlkf4KKqAbErjWKjnYlqu/kkRMjvJBA5/DcngQht5nj8gIU5Fr
	 gFS9ibVZxo6+wfz/e7jBrogIqexU4mnaICUrcB9aCaAxc00Y4o55/+1dC1+E4GZilP
	 h4OJEW8SYc+lr2KrdV0mJl9Phb6j12Ljn7Rpo2SuPaKFDsVfoFU1oyPhnBiy+rcSWy
	 kEZ7pS2ClTzUsX+h1nW8ri95e61+8WkkCWksZDCbKIUoYb+5tG5Y429idsPIl0C5QS
	 g9AF3avwCit+7/YfRu7KraABLmlD/bCrUA3UbsOnVvy5X36NEvcLRS/tOtuYXmO/j5
	 BAAafQeugBLXQ==
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 71B9F385CED
	for <usrp-users@lists.ettus.com>; Fri,  9 May 2025 20:35:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NWcTU+bO";
	dkim-atps=neutral
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ad1d1f57a01so491981666b.2
        for <usrp-users@lists.ettus.com>; Fri, 09 May 2025 17:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746837334; x=1747442134; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=C61jzdQ0GgESxUKhJtW1tTakNU+ddtyK0+7BN/+rtPM=;
        b=NWcTU+bO/RSwjOcykJF6kBItX0FHSNyptIqWsEVh+0Q0NZSHNRJjtFf79bDz3l1jdx
         23GQ0M2O8mlM0fKkOHZYRRa8hEDwF6JE2+OJhhS+OaGRyVKYRQOzyEa/B0hAIqHbDG6m
         /zBWCcdALWyZavjwHZIVVnijrM8r8Uysy/IENyWq2D3+8iXI6ytvVvEowOws5Ue1KOV7
         ldYScckLgPjviza0ZdWhbAHRZ4xEo3w77P7YNPKN/sbSgcfKBN0CjT3u1Ck7/gVAutRc
         6MkonihJjAccWB3NHXO/6F8cgOU7V0g6KksC8XLqlJ4RMddgWzu3TGW/50Rez71SZGdu
         h7JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746837334; x=1747442134;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C61jzdQ0GgESxUKhJtW1tTakNU+ddtyK0+7BN/+rtPM=;
        b=VRgjPbwvzpP2YkyKH88cBRwXsnfotxqrm86Lt3dHhKnGfIuBMRSs3n+LFHLiu5Wujl
         4RYOcXhj6V0FVHrYahVjl1E4+K+TkNPOM69YfPoc6eOSc5CFDc6OARguT1/kd3Vaq7l0
         Kf1isOuMVzAGPaYJyi/uhjtCu8n0o+exVtM4YbfFwdnNK5vd5B6BfeibUbLry3+YmpFy
         QgvtwXWkRX7j14dhEt0viC0Jis+0iJwGoMZBoSznx0IPTX3AdL3aVjOI11UUvX+yATxq
         FqU2lv99NNuU+iNA83YcjAYgIM2P4X/hbh0sbTSMrtzmIDcWhtWtV5stqPipn98aIO+c
         TyPw==
X-Gm-Message-State: AOJu0YxZLEMR09nI+wV+c5uBzRL6jMJyyQ4z3jbrugO1fKxyop2w+s6p
	98hV6ZJjcOm7jM88EeTheMpyDKMDh0IgzWrFaQg9GpYnboN5F6mRivzbC3F80IGfdYkYeGt35cK
	LpMdP9tSm9Kz3Q1acL8HKVgMWmIb3fw==
X-Gm-Gg: ASbGnctnrVapdOWuT4G/B/NCbRCQMCmRIS4Y1TTlLJdSbeWbO9XLW9ijeRBXmUsdEYI
	2qvZs60iJ5X3uwaR8ncE7mOpmnAsJN4GFbVjxPmtyzJRFMRvggWk0ErB7GVoa6mgIPf9C2gOied
	K9oxrozgy0q0qRp1bn4J+TlXu5DUXp1/Fn8tMu91JqBIk=
X-Google-Smtp-Source: AGHT+IH+K1dUEzzPAMA5v+nuiDUBWIQ299jx+tYNoorYu0Uch0d1fNCKrL1QHB5+Ex5s3ZEq6qs6R4Ihsh02COS0/8U=
X-Received: by 2002:a17:907:3d92:b0:ace:cf44:28c7 with SMTP id
 a640c23a62f3a-ad2192c5d15mr622292366b.57.1746837333683; Fri, 09 May 2025
 17:35:33 -0700 (PDT)
MIME-Version: 1.0
From: Brian Padalino <bpadalino@gmail.com>
Date: Fri, 9 May 2025 20:35:22 -0400
X-Gm-Features: AX0GCFsPS2i5Nd4itETgddkyuEw9Outpxk8_yeGP-JhBscY_jyAACreMtjhxyWQ
Message-ID: <CAEXYVK7tEQFgKsgpRtnMJgXdgqk-76QARN5UcSuX3W=DnfJ+4g@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: N5WAECGA3HBSNCHW4V5P5QFSIPEDV75W
X-Message-ID-Hash: N5WAECGA3HBSNCHW4V5P5QFSIPEDV75W
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Inconsistent Behavior Based on Host (X440)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N5WAECGA3HBSNCHW4V5P5QFSIPEDV75W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2224116130886212529=="

--===============2224116130886212529==
Content-Type: multipart/alternative; boundary="000000000000c133bd0634bd42e1"

--000000000000c133bd0634bd42e1
Content-Type: text/plain; charset="UTF-8"

I wrote a program to interact with my RFNoC block. I stream data to it
which it stores into DRAM. I then write a control register and the DRAM is
transmitted.

I have been testing my block over 100 Gbe using a remote machine and I
finally got the results I was expecting. The spectrum looks great.
Everything is consistent and works wonderfully.

I then rebuilt my application targeted for the RFSoC and use 127.0.0.1 as
the target IP. When I do this, the spectrum looks absolutely terrible.
Investigating further, I see the DRAM AXI bus gets written with the
appropriate data, but the read channel returns absolute garbage.

To further complicate things, if I run my program on the external host with
100 Gbe connectivity, and then I run the program locally on the RFSoC, I
get the desired output and the DRAM reads are correct.

I haven't looked at the DRAM signals directly, but it almost seems like the
write enables are disabled when I am running from the RFSoC directly but
working fine when ethernet is involved?

I am puzzled by this mainly because, as I stated, the only change I have is
where the program is running. I would imagine the desired effect should be
the same for running on an external machine or on the local one?

Any pointers or insight would be appreciated.

Thanks,
Brian

--000000000000c133bd0634bd42e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I wrote a program to interact with my RFNoC block. I strea=
m data to it which it stores into DRAM. I then write a control register and=
 the DRAM is transmitted.<div><br></div><div>I have been testing my block o=
ver 100 Gbe using a remote machine and I finally got the results I was expe=
cting. The spectrum looks great. Everything is consistent and works wonderf=
ully.</div><div><br></div><div>I then rebuilt my application targeted=C2=A0=
for the RFSoC and use 127.0.0.1 as the target IP. When I do this, the spect=
rum looks absolutely terrible. Investigating further, I see the DRAM AXI bu=
s gets written with the appropriate data, but the read channel returns abso=
lute garbage.</div><div><br></div><div>To further complicate things, if I r=
un my program on the external host with 100 Gbe connectivity, and then I ru=
n the program locally on the RFSoC, I get the desired output and the DRAM r=
eads are correct.</div><div><br></div><div>I haven&#39;t looked at the DRAM=
 signals directly, but it almost seems like the write enables are disabled =
when I am running from the RFSoC directly but working fine when ethernet is=
 involved?</div><div><br></div><div>I am puzzled by this mainly because, as=
 I stated, the only change I have is where the program is running. I would =
imagine the desired effect should be the same for running on an external ma=
chine or on the local one?</div><div><br></div><div>Any pointers or insight=
 would be appreciated.</div><div><br></div><div>Thanks,</div><div>Brian</di=
v></div>

--000000000000c133bd0634bd42e1--

--===============2224116130886212529==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2224116130886212529==--
