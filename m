Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F92386CC3
	for <lists+usrp-users@lfdr.de>; Tue, 18 May 2021 00:12:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 148EB384285
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 18:12:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dIk2v1j2";
	dkim-atps=neutral
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 4A0B73841BE
	for <usrp-users@lists.ettus.com>; Mon, 17 May 2021 18:11:40 -0400 (EDT)
Received: by mail-ot1-f53.google.com with SMTP id 69-20020a9d0a4b0000b02902ed42f141e1so6929153otg.2
        for <usrp-users@lists.ettus.com>; Mon, 17 May 2021 15:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1BAlO3IBP2JZDMLUfVpI+L8zFaQX2a23vsmKa3YLo+8=;
        b=dIk2v1j27sjBAByJQc8FkWyG47EtKZLVa2inONLcydW6hSl3BvvER9TzxmZG/c0nk9
         0cgGWk2mZa8EDva+LRXkAfiSWp/MLjhMbm2NQNmMWHuwDgxvwmTpm0yOOv4UwE1f17or
         /ZMqgya+AdSEpd4dX7/SZM2/Njp9nQHIor6LdXo88Tb9cpgravJgCTyGjtKEvuWDRMr4
         bH1D3SvpWYwF2pJhu9PTxQCZ+qhH776r7otpbIpriuQ2JzSfhfbN5ZiobUg9NWDu6Nsl
         gpnGSg/XJepSJTpBW/xt68QtLPmiJzddyMcLSq/LTP6CcJEe4CSumHlSIWK65s74qSYO
         C4/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1BAlO3IBP2JZDMLUfVpI+L8zFaQX2a23vsmKa3YLo+8=;
        b=KypQOJsggeF0KyMFaXfkxNnWwewteeHyKGFsx5m05g0ENgKzVE8z+poqYZ3clcLBFi
         qZPMKW/gq/M0GoOjkyvNFuUjcbi3aeiluy2SgU3FpBJQsSoXKiCM6AHB8QZ3FmSpzY1o
         IYO0uVD6fXkzVHXKPZI4teX9/XhmR7teQef1dWjNVGXvlqyG6K0UwshkwTiEQ540uoqu
         vYtLfXXbK7xxv2BnoKRR7+Y4S3O6ubpuZ75l+XmySNlR+vFIcpTpG6O1dp9X4HwJK+o5
         BXGs3CeKxHMvvZHSdJM/mi5mS+uVgjTsMaKgzbc92hC58dw7Nk6quxhHU6HQm8nxtCwD
         Z6RQ==
X-Gm-Message-State: AOAM532JGChB3Jlyq/wCL5W+a308bXW5YM+B2hGvc7JBVEU9xbvW1dxq
	J+Xdn3rvc3NE4GIAxdzTfzIYDU+3a09b9LTB35M=
X-Google-Smtp-Source: ABdhPJyFk6tVRFsanw/gFAz2MDinp1GTbDDkWyTK4Z4jiHibLR8WJoTKBu7d75u88yyP2oVuZgCIP8GNNhl9HeRGA/c=
X-Received: by 2002:a05:6830:208e:: with SMTP id y14mr1413098otq.15.1621289499599;
 Mon, 17 May 2021 15:11:39 -0700 (PDT)
MIME-Version: 1.0
References: <BLAPR09MB6612AA4E4BEC9AB9EC4D73C8D9509@BLAPR09MB6612.namprd09.prod.outlook.com>
 <12712_1621024152_609EDD98_12712_124_1_CAEXYVK4M7VXi8vAaXpneJ_hVvwbaLPQD+Q9vLO7XJvjbifSDvw@mail.gmail.com>
 <BLAPR09MB6612480376497870AC78363FD9509@BLAPR09MB6612.namprd09.prod.outlook.com>
 <CAEXYVK521Vi5zDzxbkCLdMAVdgBcEoXM1yBXy7seMW=XcPtzbw@mail.gmail.com>
 <BLAPR09MB6612A8E6DC947A10BE0A2093D92F9@BLAPR09MB6612.namprd09.prod.outlook.com>
 <BLAPR09MB6612D72CDEB494129FE5AAD3D92F9@BLAPR09MB6612.namprd09.prod.outlook.com>
 <CAEXYVK6cSejKZkr40v6BUeta1mPfGyfOtwE8-62p_PCTdSqxhw@mail.gmail.com>
 <BLAPR09MB66129186B794ACF02B0AF7F0D92D9@BLAPR09MB6612.namprd09.prod.outlook.com>
 <CAEXYVK6qk-Q3xCysSry75SxH-UzL4tB7V=xjaunWWNK3XmGYzw@mail.gmail.com> <BLAPR09MB66128DD849F46CB9771F12FED92D9@BLAPR09MB6612.namprd09.prod.outlook.com>
In-Reply-To: <BLAPR09MB66128DD849F46CB9771F12FED92D9@BLAPR09MB6612.namprd09.prod.outlook.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Mon, 17 May 2021 18:11:28 -0400
Message-ID: <CAEXYVK6Tz8usQVQb4VoKQ5BqpssFb6tS5y3KzcLaWaeQm5v50Q@mail.gmail.com>
To: Jeffrey P Long <jplong@mitre.org>
Message-ID-Hash: KI63BBKSNI4VYWJM5M4HEWSDQLX3P73H
X-Message-ID-Hash: KI63BBKSNI4VYWJM5M4HEWSDQLX3P73H
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXT] Re: RFNOC block name?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KI63BBKSNI4VYWJM5M4HEWSDQLX3P73H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0199385247627325372=="

--===============0199385247627325372==
Content-Type: multipart/alternative; boundary="000000000000b3a54f05c28de02a"

--000000000000b3a54f05c28de02a
Content-Type: text/plain; charset="UTF-8"

On Mon, May 17, 2021 at 5:30 PM Jeffrey P Long <jplong@mitre.org> wrote:

> Brian-
>
>
>
> OK just tried it and it does resolve the names now. In network mode the
> .so is installed in /usr/local/lib so it throws a bunch of errors trying to
> load everything else in that directory but when usrp probe does finally
> start executing it shows the correct block names. I suppose on the embedded
> target I could put the .so somewhere else to avoid all these other load
> attempts. Do you have a recommendation?
>

Probably some shared location that only has .so module files that UHD
should load for both network and embedded mode.

Since it's an environment variable you set, it can be anywhere.

I'm glad it works for you.

Brian

>

--000000000000b3a54f05c28de02a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, May 17, 2021 at 5:30 PM Jeffrey P=
 Long &lt;<a href=3D"mailto:jplong@mitre.org">jplong@mitre.org</a>&gt; wrot=
e:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"gmail-m_7815630287743177576WordSection1">
<p class=3D"MsoNormal">Brian-<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">OK just tried it and it does resolve the names now. =
In network mode the .so is installed in /usr/local/lib so it throws a bunch=
 of errors trying to load everything else in that directory but when usrp p=
robe does finally start executing
 it shows the correct block names. I suppose on the embedded target I could=
 put the .so somewhere else to avoid all these other load attempts. Do you =
have a recommendation?</p></div></div></blockquote><div><br></div><div>Prob=
ably some shared location that only has .so module files that UHD should lo=
ad for both network and embedded mode.</div><div><br></div><div>Since it&#3=
9;s an environment variable you set, it can be anywhere.</div><div><br></di=
v><div>I&#39;m glad it works for you.</div><div><br></div><div>Brian</div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div lang=3D"EN-US" style=
=3D"overflow-wrap: break-word;"><div class=3D"gmail-m_7815630287743177576Wo=
rdSection1"><div><div><div>
</div>
</div>
</div>
</div>
</div>

</blockquote></div></div>

--000000000000b3a54f05c28de02a--

--===============0199385247627325372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0199385247627325372==--
