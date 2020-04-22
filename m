Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 553791B4FEF
	for <lists+usrp-users@lfdr.de>; Thu, 23 Apr 2020 00:09:00 +0200 (CEST)
Received: from [::1] (port=43946 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jRNYB-0001jb-5f; Wed, 22 Apr 2020 18:08:59 -0400
Received: from mail-oi1-f173.google.com ([209.85.167.173]:44680)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bpadalino@gmail.com>) id 1jRNY7-0001UY-1H
 for usrp-users@lists.ettus.com; Wed, 22 Apr 2020 18:08:55 -0400
Received: by mail-oi1-f173.google.com with SMTP id a2so3329114oia.11
 for <usrp-users@lists.ettus.com>; Wed, 22 Apr 2020 15:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bzROifHQJZEp0EIgBjmC/e7YDv0hbwdrOAd1aa1SSjM=;
 b=kFSL7nitGam0zNTVyjEMwhXou7sVeuEwOnbdcXNuOMF6gLFgyfPmukjiTneOZrxtu+
 n5fZLwy+lUtATFwKTu8bVFmIeC+LZCAT1cmpHlYcG8PZTipj7H0twHx4KDDL0Sxp+0ml
 F0MuwdUHTAXMC//sW2nF/P8WnIO7xcN8qifHWvwOqvLuuBrFbAHuCQImGvsGENw3reII
 q156Uq+QY12ANrXTCMt5SiwJxRzTUOhiWiRnBhLVfVyR4mVGhUnV9QOhAfOzY03sGsnS
 yIedYLfN/OOPx2RmYnEAdoLGfmoNK8H1YDjGSjXNzp7lK2Ya1IcZ5cTZc6JsQqMrtPMV
 bEdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bzROifHQJZEp0EIgBjmC/e7YDv0hbwdrOAd1aa1SSjM=;
 b=AbdvaJ8AruX8GTlPl6xhfVlnpMYAdZYmWCf08thc5ndIXVwQSf+ybjTlhsNMfvkp8G
 k9FlBdj7YMMsCAp3sXNEKxY7LOG4e1prRYnG2gaf+1d19tAfMm7vSi53oCUm/hP3usRv
 i6qRd5PwwmqjfwJbVu1yG2wJuMsTGJzy/8B8eLhlopxJ3Ri4SpSJ9U4zChNCeA4j68SD
 9F/U0/9nQLRWOlQhUkhVsKspCj9MQERhnRq/f9jYcFAxdvTcVeFpTmQ1TiUNIGW4KeC2
 xoRkdOzB997zO/yFXVaO+nogBNjZHSh1lMGa2C044NMMitvHkvCOVA2fuMRSix6WKKTy
 RXDA==
X-Gm-Message-State: AGi0PuYy9x54jZX9sY02BLVZ/MLqW7/yTBnPBWlT13yxA323oejDNcDG
 hDbaUQLeBlXgbXz3n6i3DH6e55BlfU0R6ptM5UA=
X-Google-Smtp-Source: APiQypLywuiYx2LbCbrEjNWNr7v8rfcxmFGKL+K3JCkHl/ZyiY1fO6W84mK8uNlDzHI9LNB4kgbDlJMN1fVSBROUrjQ=
X-Received: by 2002:aca:fd93:: with SMTP id b141mr852584oii.177.1587593294300; 
 Wed, 22 Apr 2020 15:08:14 -0700 (PDT)
MIME-Version: 1.0
References: <BM1PR01MB3348D0FEC4BEAA5F7A79200C88D20@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BM1PR01MB3348D0FEC4BEAA5F7A79200C88D20@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
Date: Wed, 22 Apr 2020 18:08:02 -0400
Message-ID: <CAEXYVK5Ts2mewxrSw40puiLtHv1+w5R8fi=d+7LD2gcxvn-9Cw@mail.gmail.com>
To: Snehasish Kar <snehasish.cse@live.com>
Subject: Re: [USRP-users] Modifying RFNoC ddc block for 16 parallel instances
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8479186149342939773=="
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

--===============8479186149342939773==
Content-Type: multipart/alternative; boundary="0000000000005acb7705a3e85ed7"

--0000000000005acb7705a3e85ed7
Content-Type: text/plain; charset="UTF-8"

On Wed, Apr 22, 2020 at 6:00 PM Snehasish Kar via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello
>
> I need to have input 16 input and output port from the RFNoC so that I can
> custom sample rate for each channel. Is it possible to modify the RFNoC DDC
> block and split stream block to achieve this.
>

Probably not successfully.  They are too large by themselves to just
instantiate 16 of them.  Moreover, having lots of output ports on a block
is not really well supported from my experience.  Lastly, having 16 blocks
just isn't going to work.  The crossbar doesn't have enough ports.  You're
better off making a block with 1 input and 16 outputs, but, as I mentioned
before, that is still potentially problematic.

Also, the split stream is pretty finicky.  I don't believe it conforms to
the AXI spec and might cause lockups.

Lastly, you need to make sure you adhere to the ~200MHz/AXI port rule of
thumb.

Do you have a block diagram of what you're trying to achieve?

Brian

--0000000000005acb7705a3e85ed7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Apr 22, 2020 at 6:00 PM Snehasish=
 Kar via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-=
users@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">



<div>
<div dir=3D"ltr">
<div></div>
<div>
<div><span style=3D"font-family:-apple-system,HelveticaNeue;font-size:14.66=
67px;display:inline">Hello<span>=C2=A0</span></span><br style=3D"font-famil=
y:-apple-system,HelveticaNeue;font-size:14.6667px">
<br style=3D"font-family:-apple-system,HelveticaNeue;font-size:14.6667px">
<span style=3D"font-family:-apple-system,HelveticaNeue;font-size:14.6667px;=
display:inline">I need to have input 16 input and output port from the RFNo=
C so that I can custom sample rate for each channel. Is
 it possible to modify the RFNoC DDC block and split stream block to achiev=
e this.</span></div></div></div></div></blockquote><div><br></div><div>Prob=
ably not successfully.=C2=A0 They are too large by themselves to just insta=
ntiate 16 of them.=C2=A0 Moreover, having lots of output ports on a block i=
s not really well supported from my experience.=C2=A0 Lastly, having 16 blo=
cks just isn&#39;t going to work.=C2=A0 The crossbar doesn&#39;t have enoug=
h ports.=C2=A0 You&#39;re better off making a block with 1 input and 16 out=
puts, but, as I mentioned before, that is still potentially problematic.</d=
iv><div><br></div><div>Also, the split stream is pretty finicky.=C2=A0 I do=
n&#39;t believe it conforms to the AXI spec and might cause lockups.</div><=
div><br></div><div>Lastly, you need to make sure you adhere to the ~200MHz/=
AXI port rule of thumb.</div><div><br></div><div>Do you have a block diagra=
m of what you&#39;re trying to achieve?</div><div><br></div><div>Brian</div=
></div></div>

--0000000000005acb7705a3e85ed7--


--===============8479186149342939773==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8479186149342939773==--

