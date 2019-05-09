Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F36D0191FE
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 21:03:08 +0200 (CEST)
Received: from [::1] (port=49146 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOoJs-0003ZF-9w; Thu, 09 May 2019 15:03:04 -0400
Received: from mail-ot1-f44.google.com ([209.85.210.44]:38351)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <bpadalino@gmail.com>) id 1hOoJJ-0003UX-J0
 for usrp-users@lists.ettus.com; Thu, 09 May 2019 15:02:59 -0400
Received: by mail-ot1-f44.google.com with SMTP id s19so3313241otq.5
 for <usrp-users@lists.ettus.com>; Thu, 09 May 2019 12:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=s5OrS7IDH2flcGH+T++IoucsEXUEhvkeaODMxOcLdWQ=;
 b=KIEIjjSxfVfwVCJFEUmGdSZiRLDPXAEsXSIrflUGSLsgrFtfBNhxhCK5DZdUObTs9T
 2ounBErQhGBwVVEw/X7qazx9/CFmO2i5jKmQYIwhYYNJFxwJ3wHqJyvNgrxdaAQVy6nb
 7owKLfQRaKTD5xT22M80aIi4WZJp7R21nykWZ5CQXjpNAyxwMydpsP6Sc590VI5Rswm1
 grRPkhYa4PR+74ejFXkPnjBHR9ErXkENZherQkhXMJt0waotI6fqSmGgRNXli7EK+rTK
 TMMElgEJHHd1PGZDVJTeQI2+z9GCGuOBdWFAZxfHno36dyU1bluJ0EBo6ogwEYUZE1GU
 5fkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s5OrS7IDH2flcGH+T++IoucsEXUEhvkeaODMxOcLdWQ=;
 b=iSWXylJqQ0aS2DbW15Ffv2hEwaoxtd3XLG60Ewii+022CYsJJOCsOmDGIEGQNMwJCg
 ErnFhZkcrX3XuKkJWz/kKNeSpRDYylXzqoslNtjNFER4yfI1TudnIKaW6XrvAlgZLN+R
 q/yktofWW5XZJZ0XQcM6Lw8efvZPmBE2D3ISOBIyxZhFF8uMWOQpJ10twYgNfq3QaZWZ
 63t+RnvFAqzAfOZjKsUgumWUyUXZNmeuXaZE5Vcx/MuYIImYUykfN2CplUVmnyDGFucl
 iD2XPN7xpnEj1YgDjuP2M9mvy2kPfZ4q3rsQwb5gC0wVNqwlwUojtQYQBxhiPBQT34lz
 L0HA==
X-Gm-Message-State: APjAAAULG+rSxSqRTMvWT9EVA5+RiyOt//Uifj5MKof4W0+w714PDrX0
 9TlEXPxe7ut34x2+sprJ3TLDXCkgoUZ+KnA86KfZuKJs
X-Google-Smtp-Source: APXvYqxzfvNxtaH2dPrO07i7uh5t+kUNrWRjwypJtdQhh45kHgwE9bVrUcG9/6V1cpUERTf0HbOuJ51BP6PQ9TtjUG4=
X-Received: by 2002:a05:6830:196:: with SMTP id
 q22mr3480772ota.127.1557428508686; 
 Thu, 09 May 2019 12:01:48 -0700 (PDT)
MIME-Version: 1.0
References: <003201d505f5$b2dfb770$189f2650$@sysware.com>
 <CAEXYVK4np9o7NAPctbMuoMaJX3xVwgvThf99jQpP1_1g1xMywQ@mail.gmail.com>
 <004a01d505f9$c7b437d0$571ca770$@sysware.com>
 <CAEXYVK6A1rF0xvNNAi5HsBjpVFdfQw=aekVP4OU++Zby9+ov=g@mail.gmail.com>
 <00ba01d50689$0fe41630$2fac4290$@sysware.com>
In-Reply-To: <00ba01d50689$0fe41630$2fac4290$@sysware.com>
Date: Thu, 9 May 2019 15:01:35 -0400
Message-ID: <CAEXYVK65edB=XQnAokDuCfxj7tABXVOzHJOiOY-Ew-U9NU8ORQ@mail.gmail.com>
To: Michael Deacon <michaeld@sysware.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Relationship between IQ values,
 gain and noise on B205mini transmitter
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
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3182229451774794533=="
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

--===============3182229451774794533==
Content-Type: multipart/alternative; boundary="00000000000005ffaa05887915a3"

--00000000000005ffaa05887915a3
Content-Type: text/plain; charset="UTF-8"

On Thu, May 9, 2019 at 1:03 PM Michael Deacon <michaeld@sysware.com> wrote:

> I hope this is what you are looking for. Would clipping here be an
> indication of saturation?
>

Not quite.  You may be able to look at the CCDF of the output and see if it
hits a brick wall versus the "good" picture.

I'd much prefer to see an IQ constellation diagram.  For OFDM it'll just
look like a big Gaussian meatball unless you hit some clipping or
weirdness, then you'll see it square up or look strange.

Brian

--00000000000005ffaa05887915a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, May 9, 2019 at 1:03 PM Michael De=
acon &lt;<a href=3D"mailto:michaeld@sysware.com">michaeld@sysware.com</a>&g=
t; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div lang=3D"EN-US"><div class=3D"gmail-m_-31217955008=
9952674WordSection1"><p class=3D"MsoNormal">I hope this is what you are loo=
king for. Would clipping here be an indication of saturation?</p></div></di=
v></blockquote><div><br></div><div>Not quite.=C2=A0 You may be able to look=
 at the CCDF of the output and see if it hits a brick wall versus the &quot=
;good&quot; picture.</div><div><br></div><div>I&#39;d much prefer to see an=
 IQ constellation diagram.=C2=A0 For OFDM it&#39;ll just look like a big Ga=
ussian meatball unless you hit some clipping or weirdness, then you&#39;ll =
see it square up or look strange.</div><div><br></div><div>Brian</div></div=
></div>

--00000000000005ffaa05887915a3--


--===============3182229451774794533==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3182229451774794533==--

