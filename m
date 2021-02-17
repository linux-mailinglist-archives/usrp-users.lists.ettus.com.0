Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8174031DAFA
	for <lists+usrp-users@lfdr.de>; Wed, 17 Feb 2021 14:54:08 +0100 (CET)
Received: from [::1] (port=33692 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCNHI-0006It-2s; Wed, 17 Feb 2021 08:54:04 -0500
Received: from mail-ej1-f43.google.com ([209.85.218.43]:33605)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aaron.rossetto@ettus.com>)
 id 1lCNHE-0006EA-TM
 for usrp-users@lists.ettus.com; Wed, 17 Feb 2021 08:54:00 -0500
Received: by mail-ej1-f43.google.com with SMTP id jt13so22319145ejb.0
 for <usrp-users@lists.ettus.com>; Wed, 17 Feb 2021 05:53:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=pP/AKf+o3u8OquBTbzMRdAtu6TdoQ15wyqZncXbdF8o=;
 b=rzb+boui5SZKzy3gQaceYsAlticYqD7pmckrteWWUNgWsnTJbI7rycgbqqAIE8JKOa
 05Q3JTd9GYlXCkOfP5M6Vivq9ebGnLfHlt58kyZ0Rz+gGZlUKrsr4pt7zAzX5mPUDEDC
 XWGoKADiD2sh/+v9xU8xxE4wyOByoHv3ZwLlIYKHYKuSW5myF5iN12Fq+JEUoXJMuTnR
 a6trbnuv0KVhS6WCffj27NdhuRoYx+hnYqA7aq4K2hryH/5cXearW31xrjXfay4Gpk2W
 CpK5/iUcXESxHs0SIz9qVz3wHcRBTswyz34ROfUSfyVXjaYTDWGO1DSqHbSOCsTpL96u
 VsRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=pP/AKf+o3u8OquBTbzMRdAtu6TdoQ15wyqZncXbdF8o=;
 b=VXQeefxFFRoGLJWfz771UkB8OkLut0EqMzyuz/8vy0eLKRWy+obkp7EFd/QT341oLo
 tortdQ+0A7xU6axIVyllZrQy8yBapeumklaNaCp2t5e/EWiRq3jTJwlamTRzVjSa0m3W
 z/i/nENiI8NpzZO5xQOhoWMYreUQcP+mJ3yptaVGJDl4447v9quzylrwWL/MpVl413DK
 56Bg7kg+C4BVmbQTd1uq3Z+adfYM/E3QYpWgaPpQOtYhSEvuh61EpvUDQNvMTOOUEM+M
 K9i1Rb9kWbGTzlykhv8cF9LuanREhkstV7BlQZFt+GxBPmtYcUHA5ksEquxeic2GVJLZ
 cS4w==
X-Gm-Message-State: AOAM531oPWandBatOmuyeMu4QkhMT2Y8poO9WT+u5OxvZKgfMrzv5HE7
 TVjP3c66H4cGcvCOmOaIkuGl4AsfzCgOgN9aUCPQKQ5XHVUIHHW4
X-Google-Smtp-Source: ABdhPJwt83rnTnOpirbNG4jLQHgxJxeRZsKiawqdeaqvSy37jvapdyKmJ7M+nl1lCSxjnKkgje041E4Dtlki8CsYhcM=
X-Received: by 2002:a17:906:4b0f:: with SMTP id
 y15mr23949630eju.369.1613569999908; 
 Wed, 17 Feb 2021 05:53:19 -0800 (PST)
MIME-Version: 1.0
References: <1addbb88-269a-0928-1fd3-415daa295a61.ref@verizon.net>
 <1addbb88-269a-0928-1fd3-415daa295a61@verizon.net>
In-Reply-To: <1addbb88-269a-0928-1fd3-415daa295a61@verizon.net>
Date: Wed, 17 Feb 2021 07:53:09 -0600
Message-ID: <CAAg5+MxyvT7GF_=bXpkMeAcRaQ7tLhPeU1aDrAuGFLZGwwuHdQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] rfnoc_image_builder error with clock domain
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
From: Aaron Rossetto via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Aaron Rossetto <aaron.rossetto@ettus.com>
Content-Type: multipart/mixed; boundary="===============4930556054842321199=="
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

--===============4930556054842321199==
Content-Type: multipart/alternative; boundary="000000000000aa440a05bb888af1"

--000000000000aa440a05bb888af1
Content-Type: text/plain; charset="UTF-8"

On Tue, Feb 16, 2021 at 10:15 AM Mike via USRP-users <
usrp-users@lists.ettus.com> wrote:


> Any ideas?


Try changing the clock domain connection to your FFT block to this:
  - { srcblk: _device_, srcport: rfnoc_chdr,    dstblk: fft0,   dstport:ce
}

Does that allow rfnoc_image_builder to complete successfully?

Best regards,
Aaron

--000000000000aa440a05bb888af1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Tue, Feb 16, 2021 at 10:15 AM Mike via USRP-users &lt;<a href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote=
:<br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">Any ideas?</blockquote><div><br></div><div style=3D"font-family:arial,sa=
ns-serif" class=3D"gmail_default">Try changing the clock domain connection =
to your FFT block to this:</div><div style=3D"font-family:arial,sans-serif"=
 class=3D"gmail_default">=C2=A0 - { srcblk: _device_, srcport: rfnoc_chdr,=
=C2=A0=C2=A0=C2=A0 dstblk: fft0,=C2=A0=C2=A0 dstport:ce } <br></div><div st=
yle=3D"font-family:arial,sans-serif" class=3D"gmail_default"><br></div><div=
 style=3D"font-family:arial,sans-serif" class=3D"gmail_default">Does that a=
llow rfnoc_image_builder to complete successfully?</div><div style=3D"font-=
family:arial,sans-serif" class=3D"gmail_default"><br></div><div style=3D"fo=
nt-family:arial,sans-serif" class=3D"gmail_default">Best regards,</div><div=
 style=3D"font-family:arial,sans-serif" class=3D"gmail_default">Aaron<br></=
div></div></div>

--000000000000aa440a05bb888af1--


--===============4930556054842321199==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4930556054842321199==--

