Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A5A24A310
	for <lists+usrp-users@lfdr.de>; Wed, 19 Aug 2020 17:28:31 +0200 (CEST)
Received: from [::1] (port=59244 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k8Q0q-0004La-QC; Wed, 19 Aug 2020 11:28:28 -0400
Received: from mail-il1-f180.google.com ([209.85.166.180]:38986)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <emoges@uncc.edu>) id 1k8Q0n-00047f-5Y
 for usrp-users@lists.ettus.com; Wed, 19 Aug 2020 11:28:25 -0400
Received: by mail-il1-f180.google.com with SMTP id f12so13405913ils.6
 for <usrp-users@lists.ettus.com>; Wed, 19 Aug 2020 08:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uncc.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=D5xThpaT6uzTQEzMc/B5LgPdsf+LEqQfdBxmSJecpl8=;
 b=ZkYJDYlIjqKSVbDIOW1iZQmcuf9UMrjds4ehCapYLS2JQu+xsOBc+7UenveoSKl6Wf
 N/BwTbGXmUREt1SnXBUJL4jeDdpABOlSBNVuztVIIgnOJBkmZk2GmN6VLBExWjPCQDsp
 eJOYD44qjVCCtOSiAqGjJOp2i7Z74hVxABycQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=D5xThpaT6uzTQEzMc/B5LgPdsf+LEqQfdBxmSJecpl8=;
 b=Rid0TfNej4fuok6E1yUMmrAeTtZajeV8ZikB7CKFT8EdLHVTkMeISvFpPcapk/vSyM
 ZrDy1SsPMZOZFdsBXOQ5IJ48Pa8Y/VVTb1J0U8LkYdbnYHVCFhUaBT6Go5a/JOSRLkpQ
 qrUY+4pNgH/kaqf0VSO/eVM8M7qCN+gKIzNMMCA0B9AURW+74u7nAdeN01l/nZxDJUZK
 t2VE+WGRNCgaUtpWUMmFsfSZf6oOw6k9VObEILIcAqH/hretZ/jXHgMKa1HrpdPEmvoh
 oTv0ng/QLLSKsnOMKoMaQLXF020mwDhl66uRy3NmqmckQ9jY2gSUblA+41UBeJ3IWvhp
 mPZg==
X-Gm-Message-State: AOAM533Ce96EumxDQyEkUI+8XryEJD8KxtCHsbu30iAjcIDqo8BOIc2U
 sYMdJGoBwYBDlO6FbWImq/aUb3OXbLL73suwkyHf84eJ0cw=
X-Google-Smtp-Source: ABdhPJypz/fC+t9bQjfxhZ/eE65tWD/HDY3qswzjmgN26yThP3YxL181JK9y/fKhQMJx1U+ysvi6s9mMUYxmYLFXGg4=
X-Received: by 2002:a92:9fdb:: with SMTP id z88mr22412250ilk.57.1597850864045; 
 Wed, 19 Aug 2020 08:27:44 -0700 (PDT)
MIME-Version: 1.0
References: <CANwgjNqWApsiG2Nmgxr3K_KBr-XPKXK2t9FgAqkPgidXV3MP0w@mail.gmail.com>
In-Reply-To: <CANwgjNqWApsiG2Nmgxr3K_KBr-XPKXK2t9FgAqkPgidXV3MP0w@mail.gmail.com>
Date: Wed, 19 Aug 2020 11:27:32 -0400
Message-ID: <CANwgjNpE_4RyMsXqVx3ObWJEB2ysogRbNQrx3k-ZOKSgRW_E8g@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Fwd: Benchmark_rate.py error
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
From: Ephraim Moges via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ephraim Moges <emoges@uncc.edu>
Content-Type: multipart/mixed; boundary="===============2358358008035138822=="
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

--===============2358358008035138822==
Content-Type: multipart/alternative; boundary="00000000000028116f05ad3ca5ae"

--00000000000028116f05ad3ca5ae
Content-Type: text/plain; charset="UTF-8"

Good Morning,

I am having a problem running the python benchmark_rate.py. The error
message I am receiving is in the image attached "the module uhd has no
attribute 'usrp'". My installation indicated everything was good when I ran
a make test, so I am not sure if I need to be in a specific folder so that
it can find the attribute or what.

Sincerely,

Moges

--00000000000028116f05ad3ca5ae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" =
class=3D"gmail_attr">Good Morning,<br></div><div dir=3D"auto"><div dir=3D"a=
uto"><br></div><div dir=3D"auto">I am having a problem running the python b=
enchmark_rate.py. The error message I am receiving is in the image attached=
 &quot;the module uhd has no attribute &#39;usrp&#39;&quot;. My installatio=
n indicated everything was good when I ran a make test, so I am not sure if=
 I need to be in a specific folder so that it can find the attribute or wha=
t.<br><br><div data-smartmail=3D"gmail_signature" dir=3D"auto">Sincerely,<b=
r><br></div><div data-smartmail=3D"gmail_signature" dir=3D"auto">Moges<br><=
/div></div></div>
</div></div>

--00000000000028116f05ad3ca5ae--


--===============2358358008035138822==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2358358008035138822==--

