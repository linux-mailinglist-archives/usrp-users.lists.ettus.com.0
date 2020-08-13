Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B20F243FC7
	for <lists+usrp-users@lfdr.de>; Thu, 13 Aug 2020 22:26:58 +0200 (CEST)
Received: from [::1] (port=45440 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k6JoO-0000dG-A5; Thu, 13 Aug 2020 16:26:56 -0400
Received: from mail-vs1-f43.google.com ([209.85.217.43]:37503)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aholtzma@gmail.com>) id 1k6JYI-0007o5-5C
 for usrp-users@lists.ettus.com; Thu, 13 Aug 2020 16:10:18 -0400
Received: by mail-vs1-f43.google.com with SMTP id a1so3565716vsp.4
 for <usrp-users@lists.ettus.com>; Thu, 13 Aug 2020 13:09:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FB3Rps6zlNsZ2lKU+lohq6gP2gk75IHCg0Ihr2O4Z4Q=;
 b=jT3T6/tNseKdV2+YaKb/No3eGUqXeo4IpgPaySHyHZJgmOXwEwGjnU1vblY1ZkYeLR
 alOhPacjRVIb6rPtbPzCgU50WcicqDOzKIYJh/O98ZQRdu3A7GECNd4OPf1VuKKKwynO
 wzVeufNsogrlQgjWlzzz6KV3b3YtToCWbzDz9K17rbg+5CAE9dWOPGIK27dgso6cGE/w
 IqGmx01oxtJiVuPgAtAb/sxi3rKYAnTDJq+mUAa46NHi+pmoqCRxtE5Ki2IKtJJz3cSv
 zga5Q0W73HZdP2DzdU3NoSTm3PdxeG9lF2N6JQpeBtFf/6xknB6Je56HLrjatyayrs1H
 gjow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FB3Rps6zlNsZ2lKU+lohq6gP2gk75IHCg0Ihr2O4Z4Q=;
 b=EEytEnu00x5lgQaPjCpIn3vKQkLmc7z/ydaZXK2g7WVpgbZE+gXLPvL/jdMk9acOEZ
 +jxO44R8HNNhFIlszYeusstc5ej+cdWNAPVBoKT45NKW+ZVEdMuut57FSqhSg9KmeIEP
 6fEZQ17xLL5qO3RGKzekvcfAcOJp/lXK6aQ3EhaXXTkLwWsNh/54uGdjvYeOVduVvJdY
 PwZJtQWuiEnialD353sHdcxbjC6FuyT11bMe83xQoUCni3NWawsCOTc3UNmDEHUMJlDa
 KmdUaWUFxveRTuMHUAkyH3I7nVTmhGF4Q6En4qPl0pakal6Dwg4kkKc5vA6MBT8dNxg6
 9Wmw==
X-Gm-Message-State: AOAM530gjSPLgBM3F/btmzI69lZUZMyL0Udghr8TJmI0QdBfHJD/Mf52
 0g4mjrPQII/dL8OSj086oNZanA6DJ3ju5U0SZ7Y=
X-Google-Smtp-Source: ABdhPJyLh87akwoH5Bbv35I5dnHi42yUqiaNjPqNo5PqRdXvELe8dQM3gup2Q/9jL1OYk7XABGMnmWYO4ozOcz9NgPg=
X-Received: by 2002:a05:6102:1c9:: with SMTP id
 s9mr4818914vsq.13.1597349377528; 
 Thu, 13 Aug 2020 13:09:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhVi8TCn4NxFeb5hnCjfxG6Hbc37pwzzBhEkNcj9Ju=Eyi2DA@mail.gmail.com>
 <5F3590F8.1020907@gmail.com>
In-Reply-To: <5F3590F8.1020907@gmail.com>
Date: Thu, 13 Aug 2020 16:09:25 -0400
Message-ID: <CAEhVi8T+obpC2KiLkD2qsqrv++ATCuXxctqUNCvzk_U=M8Mh5Q@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
X-Mailman-Approved-At: Thu, 13 Aug 2020 16:26:52 -0400
Subject: Re: [USRP-users] b200mini 1pps lock problem
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
From: Aaron Holtzman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Aaron Holtzman <aholtzma@gmail.com>
Content-Type: multipart/mixed; boundary="===============6408624418878913063=="
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

--===============6408624418878913063==
Content-Type: multipart/alternative; boundary="0000000000003adabe05acc7e2ec"

--0000000000003adabe05acc7e2ec
Content-Type: text/plain; charset="UTF-8"

On Thu, Aug 13, 2020 at 3:14 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> How are you detecting "lock"


By querying the "ref_locked" sensor, and also looking at the LED which is
consistent.


> Could you share a code snippet of how you set up the clocking parameters?


uhd_usrp_set_time_source(radio.usrp, "external", 0);

 Have you tried a different 1PPS source?


I've tried two different GPS. NB the GPS stays powered always between
application restarts and unplugging.

cheers,
Aaron

>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000003adabe05acc7e2ec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">On Thu,=
 Aug 13, 2020 at 3:14 PM Marcus D. Leech via USRP-users &lt;<a href=3D"mail=
to:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br=
></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;=
border-left-color:rgb(204,204,204);padding-left:1ex">How are you detecting =
&quot;lock&quot; </blockquote><div><br></div><div>By querying the &quot;ref=
_locked&quot;=C2=A0sensor, and also looking at the LED which is consistent.=
</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-c=
olor:rgb(204,204,204);padding-left:1ex">
Could you share a code snippet of how you set up the clocking parameters?</=
blockquote><div><br></div><div><div>uhd_usrp_set_time_source(radio.usrp, &q=
uot;external&quot;, 0);</div></div><div><br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-lef=
t-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex">=C2=A0Ha=
ve you tried a different 1PPS source?</blockquote><div><br></div><div>I&#39=
;ve tried two different GPS. NB the GPS stays powered always between applic=
ation restarts and unplugging.</div><div><br></div><div>cheers,</div><div>A=
aron=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:rg=
b(204,204,204);padding-left:1ex">
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div></div></div>

--0000000000003adabe05acc7e2ec--


--===============6408624418878913063==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6408624418878913063==--

