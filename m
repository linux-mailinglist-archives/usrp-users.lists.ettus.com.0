Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC546F0B3B
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 19:44:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0046B3845D4
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 13:44:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682617498; bh=DTwRtjQ6xnolT+TypHiRmEher6gY0uLyxtlJL+pVjDE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=KqmuX49H2R6NXpvNhKKDfR0o7yWl1NZke3Nnnmwwi/NiuVLTh66N2Dal1vuWlsx2D
	 TwkRbHs2Zfx0dQphLXOMst9vuZqdxt9MVwWC46iKsupQYoa6YgSXZOYkV+iX94toXb
	 lUAmQP6MSZVwjf5G3a5TQy1jpWeFFTjNzmbTkDWPC0W/o5mtpG/5XVCRHPEvColP1d
	 /oJ9CTMz28IWzM7SFqkeHZDai7J2TAGRH+cIvTBBHnnGKwO6PTsHhDXEjoJKGF3e5p
	 uTW1fcXsyCvYNgJ0aJT7EcwSdaEajdZKe6HM/cqJSmgktmnAJeu/bVkFRCx1EcqIgB
	 idSEXXM6c08+A==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 6F4B53844BE
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 13:44:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hIGOasO/";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-504fce3d7fbso13527747a12.2
        for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 10:44:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682617473; x=1685209473;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/smoLoFxuqmhUxbB5RgAnmnnfBlUDlb8ZWHy4ECq/ro=;
        b=hIGOasO/6EbcT6a4STTTwo6f9BrguRJjf3dWsjuVDtzJmCp1GeW/Kemm+zD10nydV1
         DAh5JKXtnK6n/O9wBeFKsv/yGQRF9O3btKuK2mgNguntNfivpzdk1+Wnwl6LHf+/ewF0
         eDjB5YfrTcz4AAOUqSdU9Ze6wFTTQeJj27GGqK7p3fUYNIIbWtrniT6H4ent9wXnPien
         VKN+uKEVs8dJ4RSOZ3qqnZyPp8sG0dBG/1u0z+7z5Zx8Qc1RsxEfjCk9Ncm8inxEregb
         XlnqeLJ5XmLoy5pnlBX4zB2WHH2Np+AqQj3+pqA1uXdFNNJkrmGse6OpiofgOOWJaGVp
         elYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682617473; x=1685209473;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/smoLoFxuqmhUxbB5RgAnmnnfBlUDlb8ZWHy4ECq/ro=;
        b=SkYyzr/2/IckCdGDNCD0g2yFzmPDekC+tVWaRQvb4nfF0kn3/09aUVATfgtTvgjYqO
         7f76Wqvouf3BFjpxjCpMdaQq/bvYixXJt2IT0ml3wHLQ7qXopboawpPXHvRRUTMDxrdZ
         4BUgJoQQ+IWnX4brZpo4dtZHXcLd69gwIi2j9UMWw+lgmCuArL5Jd3aO5ozCpaU/u+VG
         n9edulNkS3Y+0m59riwjruOHbGi0Jbf39s58gNbhoPWxiW2Ji5peeh66WPOMmK+c/NjG
         IlThbMEWIaSs5cJ3W61RYLma6g+RwLMZmX7BsXP6QIMRjcN4PkQRc7Q/d2I7GowO3A66
         RMCg==
X-Gm-Message-State: AC+VfDwz4RYduI1AXv/Nn0+hZBjoFsVd7V64aNhXPPAma2WasQP3c6pT
	yUi1kCtuY7B9KnAS9xdgJqiRVjohnN3gwksILRRvNzX4
X-Google-Smtp-Source: ACHHUZ7u3IhFun80mHJP1DCoEuqJZ2ON0FaZWRvug1HVUzoLQ7WRzAqLpQwRjyrJP4pbi964ZaWHiwJVvlcGqwM0qS4=
X-Received: by 2002:a50:ed0a:0:b0:504:9c59:7b8f with SMTP id
 j10-20020a50ed0a000000b005049c597b8fmr2202892eds.36.1682617473002; Thu, 27
 Apr 2023 10:44:33 -0700 (PDT)
MIME-Version: 1.0
References: <SJ0PR09MB91268F4BF0C27FE2E41A1846EC659@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAEXYVK6OOGyUWqFE85ornE2dEQqpeo6C6XHsm8a0RSKE+6VdCg@mail.gmail.com> <SA1PR09MB9130DDDC420A0E9C058E2B2CEC6A9@SA1PR09MB9130.namprd09.prod.outlook.com>
In-Reply-To: <SA1PR09MB9130DDDC420A0E9C058E2B2CEC6A9@SA1PR09MB9130.namprd09.prod.outlook.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Thu, 27 Apr 2023 13:44:22 -0400
Message-ID: <CAEXYVK7fhpPqE-XoFnAotBvVsYJfW3ko=rU8stU+b+3ZMwMbxQ@mail.gmail.com>
To: Eugene Grayver <eugene.grayver@aero.org>
Message-ID-Hash: CZTOPTPZP45JWN7REKQCLW76YFH6IS4Q
X-Message-ID-Hash: CZTOPTPZP45JWN7REKQCLW76YFH6IS4Q
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Split USRP (X310, N231) between two PCs
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CZTOPTPZP45JWN7REKQCLW76YFH6IS4Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0049935397698638120=="

--===============0049935397698638120==
Content-Type: multipart/alternative; boundary="000000000000c5708305fa54e869"

--000000000000c5708305fa54e869
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 27, 2023 at 12:00=E2=80=AFPM Eugene Grayver <eugene.grayver@aer=
o.org>
wrote:

> This is the fallback option.  At 200 Msps ZMQ will probably not work (hav=
e
> not tried it yet).
>

Maybe some misunderstanding.  ZMQ for command/control.  Raw UDP for
samples.  You might be able to write a radio class/library that plugs into
UHD that uses all the same sample sending/receiving logic between machines.

Brian

>

--000000000000c5708305fa54e869
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Apr 27, 2023 at 12:00=E2=80=AFPM Euge=
ne Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org">eugene.grayver@ae=
ro.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div class=3D"msg8301260934145943615">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
This is the fallback option.=C2=A0 At 200 Msps ZMQ will probably not work (=
have not tried it yet).</div></div></div></blockquote><div><br></div><div>M=
aybe some misunderstanding.=C2=A0 ZMQ for command/control.=C2=A0 Raw UDP fo=
r samples.=C2=A0 You might be able to write a radio class/library that plug=
s into UHD that uses all the same sample sending/receiving logic between=C2=
=A0machines.</div><div><br></div><div>Brian</div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div class=3D"msg8301260934145943615"><div dir=3D"l=
tr"><div><div dir=3D"ltr"><div><div>
</div>
</div>
</div>
</div>
</div>

</div></blockquote></div></div>

--000000000000c5708305fa54e869--

--===============0049935397698638120==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0049935397698638120==--
