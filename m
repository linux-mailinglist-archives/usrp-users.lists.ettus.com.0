Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A3A6F0B74
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 19:53:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 98D58384812
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 13:53:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682618009; bh=Mq7gj82H+AaMlteqh/J88j4B9r2txz2NcNS23XHoYHE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=0ZLBd9eBvJ+30NE9XVuwcLpDvZ8ZOWwDTiIw+62RYIkunqulT+9wVr/V3zRuHkzS7
	 dqu2aTAr/Am2hr7jglWLnvenNP3ITZ9QYEsg1e1+hXB8EtEtK48xWtXmuJKeG1z5Bd
	 i6T/8SV0PQ9ZEjFqNFjDTLyhiO9sJ+IWSsYD8XPy4pzx6A1zpDJ+3EIz197d5m3K+3
	 HtBnk5CU0jgA2dYiLVzZpqpSI0T8lgYF9cQrGQ7Z9yiLqK/l9Sn4X/eHZ0A65gfDG6
	 bxzYljIc2ojzpIUpuoZGXSKAlTSi6yPWhVC0BnR54txDAHfJaWpFgoYDBF/qgYSm3O
	 liI2fkw2L952Q==
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id D36F2383D1E
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 13:53:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hwXqDi5Z";
	dkim-atps=neutral
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-505035e3368so15318179a12.0
        for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 10:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682617986; x=1685209986;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=pRpJ2/4/2NOhX03uwjXDD35iIhWLOunLAxhzSYT5jAI=;
        b=hwXqDi5ZxazjfRpVYs04wYf+D+6Hoz/vjj+uk8EGAMfUnZ36ciB40EDhzT9qtZR84J
         nnMXxHAujKPIOE5Dz7yMze2KcsLSdgwXsJ0za4lcjCXMxm6KkAfhNmaa9NPMhAEnwhNH
         XV6oRXERiDO9sxEgtAD8uNTAngeJGMSQ1SHX8l20U8N2hmPC/l+fbpT/t1oohXT1j7ac
         mCuyczZm3x5yWVoASGIu3PRjIt/OGq9Sp/lezFFA2Jr2bWO8n2LuTPdh7+G0eNZs7N7g
         KIkxQn9W/rG8VK+sDcz7PgvrlJwQxOXPsgUVMgC3uuwrGjlMChkbbO8DQVHmiGr8NN0d
         ST6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682617986; x=1685209986;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pRpJ2/4/2NOhX03uwjXDD35iIhWLOunLAxhzSYT5jAI=;
        b=K2SCxjpZOxCzqOfT+n9Tzi5iJL0gtAGe2dpMdtqb7GZphdG8uAuaCTUL3NcgOf/mTZ
         pW5S0exIivWAcnx11RjdivRLrkNdPH7q/Tv/7mbIIwCDJae2rhZtegjpbGtwfn7dWXBh
         l7hRdk+xL0tNk3TcZLZ15lbceYMjQPKq6FsR+qP0LUVvI4JREfTqL2C5u7t5pBM8b9bN
         sj9CHUKBr5WARiwGXLznMc67XZ07THI4UshRf86+6F7xvl1mu3fNo6MtQIY9ae+1C3Tb
         LE4VwStS+eHKrZjGLrRlDfo58Kk4tdjmzblbd5FToOyXS/KXWjzcARKWRa7p6CriMqkm
         mvzQ==
X-Gm-Message-State: AC+VfDyB0Y0kSfnaBH+GhXa7FGfqOhbRA3W1ynNIxa88tD23w7jTwP2E
	h+jhRAaqW/LmQZHZ8WMlOhFQJ3UHvGhi0QViLkJ4OHtQmVw=
X-Google-Smtp-Source: ACHHUZ7TETfiZqDUVjG5Uo5hS+wjwCfXnJDtmBPb+s4BgWauqud6UYnUF+dyiaJh+ZxNC+KclsqU76sMmdOIPdlJVq0=
X-Received: by 2002:a05:6402:c6:b0:502:52dd:57a2 with SMTP id
 i6-20020a05640200c600b0050252dd57a2mr2462776edu.24.1682617985193; Thu, 27 Apr
 2023 10:53:05 -0700 (PDT)
MIME-Version: 1.0
References: <SJ0PR09MB91268F4BF0C27FE2E41A1846EC659@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAEXYVK6OOGyUWqFE85ornE2dEQqpeo6C6XHsm8a0RSKE+6VdCg@mail.gmail.com>
 <SA1PR09MB9130DDDC420A0E9C058E2B2CEC6A9@SA1PR09MB9130.namprd09.prod.outlook.com>
 <CAEXYVK7fhpPqE-XoFnAotBvVsYJfW3ko=rU8stU+b+3ZMwMbxQ@mail.gmail.com> <SA1PR09MB91306922BA156F5FAB00C803EC6A9@SA1PR09MB9130.namprd09.prod.outlook.com>
In-Reply-To: <SA1PR09MB91306922BA156F5FAB00C803EC6A9@SA1PR09MB9130.namprd09.prod.outlook.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Thu, 27 Apr 2023 13:52:54 -0400
Message-ID: <CAEXYVK46gmrNCBgd926nG9wbzMv6GTg0hXFVyFEU3bbsx=S6jA@mail.gmail.com>
To: Eugene Grayver <eugene.grayver@aero.org>
Message-ID-Hash: HRSOEIBZCXFPHPPJA2BJBDHT4ELIEMCW
X-Message-ID-Hash: HRSOEIBZCXFPHPPJA2BJBDHT4ELIEMCW
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Split USRP (X310, N231) between two PCs
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HRSOEIBZCXFPHPPJA2BJBDHT4ELIEMCW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5456830774606816615=="

--===============5456830774606816615==
Content-Type: multipart/alternative; boundary="0000000000004cdb4505fa55074e"

--0000000000004cdb4505fa55074e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 27, 2023 at 1:47=E2=80=AFPM Eugene Grayver <eugene.grayver@aero=
.org>
wrote:

> The hard part with raw UDP for samples is the flow control for the TX.
> Flow control latency is very tight at 200 Msps.  Not saying it can't be
> done, but having 'native' support in the UHD would be better.  I have fai=
r
> understanding of the UHD internals but would like to hear from Ettus befo=
re
> I dive in.
>

You could always handle TX on the local command/control node and RX
remotely since you're worried about TX flow control the most.

Brian

>

--0000000000004cdb4505fa55074e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Apr 27, 2023 at 1:47=E2=80=AFPM E=
ugene Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org">eugene.grayver=
@aero.org</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div class=3D"msg-827851306259534719">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
The hard part with raw UDP for samples is the flow control for the TX.=C2=
=A0 Flow control latency is very tight at 200 Msps.=C2=A0 Not saying it can=
&#39;t be done, but having &#39;native&#39; support in the UHD would be bet=
ter.=C2=A0 I have fair understanding of the UHD internals but
 would like to hear from Ettus before I dive in.</div></div></div></blockqu=
ote><div><br></div><div>You could always handle TX on the local command/con=
trol node and RX remotely since you&#39;re worried about TX flow control th=
e most.<div><br></div><div>Brian</div></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div class=3D"msg-827851306259534719"><div dir=3D"ltr"><=
div><div dir=3D"ltr"><div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">
<div>
<div></div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>

</div></blockquote></div></div>

--0000000000004cdb4505fa55074e--

--===============5456830774606816615==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5456830774606816615==--
