Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA43E0DD3
	for <lists+usrp-users@lfdr.de>; Tue, 22 Oct 2019 23:36:20 +0200 (CEST)
Received: from [::1] (port=50534 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iN1pA-0006B4-QJ; Tue, 22 Oct 2019 17:36:16 -0400
Received: from mail-lj1-f170.google.com ([209.85.208.170]:35475)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1iN1p7-00066V-Ba
 for usrp-users@lists.ettus.com; Tue, 22 Oct 2019 17:36:13 -0400
Received: by mail-lj1-f170.google.com with SMTP id m7so18794198lji.2
 for <usrp-users@lists.ettus.com>; Tue, 22 Oct 2019 14:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3FiBueWn/8+PIeQv/jyylFOqZ8yjMlkUu4dudESxJlw=;
 b=bcjfoDmDHJvCfyw0JSG6AQc4w2rEE0Q9ty4eqEYx+jWm1l2cjxg646lG7voYkPZB14
 lpTXlgX/iacHn8CJOgGJJR7kyVMPSCoNcHyMnujDNCkJ1E5bUngT5Dts8oyhf+PODHyY
 9gYnoi0G7DwoE0hb+ZgOlqmkChAIvf5WIzIjWJnKbpeyThBV3jxSTktixEePMPAzWdNp
 8FGyeSSq2Ode9BhOUogmhv0LbmGenR73FFrp+1tT0RdgiJ6wVVEsH/HBsoIx5NsCbWQg
 evAGhXQ03AJFnmfyCxaaj5IUoA0rJfCC7+XDMO/NUG0kajblw8kKXjNpnm5ImmkNesX7
 Ku7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3FiBueWn/8+PIeQv/jyylFOqZ8yjMlkUu4dudESxJlw=;
 b=mcL2Ce1KBirgMYAvfW76KdNo9SfFe8uP0EKw815EmeN9PXbSPanWh2Bp3W16p2X9Ni
 e54DI/89gx3F1E9ZjoFa9UZTEzcvFpoEyqjn5imwXhv0MWoJhOEZiJQDFPgKds/AC9Xb
 P9fIGp8r+QKfXEBIy6F6CXkEwZNKp4SkOrlcLH0q3mk42ccy7BIY0y9JoCLikTQR2I9Z
 0js5yxdbdqlVebSF5XQEQjW1TJSPSfv3T3ct8G0DrlkQHS0VRFGgo1TkjTA1LWJA3yNn
 GO/ja76Q0QLG3eZYbKLX5YvL5616ixkF8jHJqVIOEy48gITvOaPsVUihVtVLyQYPwsQv
 p/jQ==
X-Gm-Message-State: APjAAAXSzXMYMq3fR7W/oRzif/eiUwsi7YPxq3/TseMuWazRoKsV1sOB
 /JjUvqejSQvwhMW18q5pcArqC22wHME2f/IR6CVTPoRr
X-Google-Smtp-Source: APXvYqxnhlZ06dw7Qfv5QDdpHtnokqhe+EWJ8ibcGMgvzuV/lg8KrvbXaZGtqsv8AmTSKHn2MqaEvNf9LbyG7SHJZr8=
X-Received: by 2002:a05:651c:30f:: with SMTP id
 a15mr3669887ljp.97.1571780131961; 
 Tue, 22 Oct 2019 14:35:31 -0700 (PDT)
MIME-Version: 1.0
References: <1147349683.4033270.1571526677680.ref@mail.yahoo.com>
 <1147349683.4033270.1571526677680@mail.yahoo.com>
In-Reply-To: <1147349683.4033270.1571526677680@mail.yahoo.com>
Date: Tue, 22 Oct 2019 16:35:20 -0500
Message-ID: <CANf970bHqYcsSED9SW09f_bahsjMVn2hBSxjjCJ=w-vJ=_oFTw@mail.gmail.com>
To: Jason McBride <jasonmcbride94@yahoo.com>
Subject: Re: [USRP-users] tx_time, L, & USRP
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8670939218553597281=="
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

--===============8670939218553597281==
Content-Type: multipart/alternative; boundary="0000000000006e530b05958694ad"

--0000000000006e530b05958694ad
Content-Type: text/plain; charset="UTF-8"

Hey Jason,

Are you making sure that you're setting your TX time tag to be 2 seconds
ahead of the USRP's sense of time? A late packet means that the time a
packet should be executed on has already passed (as far as the USRP is
concerned).

You can use calls like:

get_time_now()
get_time_last_pps()
set_time_now()
set_time_next_pps()

To understand the radio's sense of time and reset it as you see fit. Having
not seen your code, I'd recommend utilizing the above functions (
https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html) to
align the times you use to populate the tx_time tag.

-Sam


On Sat, Oct 19, 2019 at 6:14 PM Jason McBride via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hey everybody, I'm trying to put together a simple bursting example. In
> gnuradio companion I'm generating a PDU, using the framer block, converting
> to a tagged stream, and then inserting a tx_time tag in an OOT python
> block. The tx_time tag is at the beginning of the streamed frame, just
> prior to the packet_len tag. I send it to the USRP next.
>
> The USRP is sync'd to PC time at the beginning of the flowgraph, and I set
> the tx_time tag for two seconds in the future. The USRP does seem to
> transmit at that time, but it generates lots of L error symbols, and after
> the initial transmission stops transmitting. I can see the stream sent to
> the USRP via a tag debug block, so I know the stream is received by the
> USRP significantly prior to transmittal.
>
> Any thoughts as to what's going on? is there something I need to configure
> on the USRP?
>
> Thank you,
>
> Jason
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000006e530b05958694ad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"font-family:verdana,sans-serif" class=3D"gma=
il_default"></div><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fo=
nt-family:verdana,sans-serif">Hey Jason,</div><div class=3D"gmail_default" =
style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_defa=
ult" style=3D"font-family:verdana,sans-serif">Are
 you making sure that you&#39;re setting your TX time tag to be 2 seconds=
=20
ahead of the USRP&#39;s sense of time? A late packet means that the time a=
=20
packet should be executed on has already passed (as far as the USRP is conc=
erned). <br></div><div class=3D"gmail_default" style=3D"font-family:verdana=
,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:ve=
rdana,sans-serif">You can use calls like:</div><div class=3D"gmail_default"=
 style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_def=
ault" style=3D"font-family:verdana,sans-serif">get_time_now()</div><div cla=
ss=3D"gmail_default" style=3D"font-family:verdana,sans-serif">get_time_last=
_pps()</div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-=
serif">set_time_now()</div><div class=3D"gmail_default" style=3D"font-famil=
y:verdana,sans-serif">set_time_next_pps()</div><div class=3D"gmail_default"=
 style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_def=
ault" style=3D"font-family:verdana,sans-serif">To
 understand the radio&#39;s sense of time and reset it as you see fit.=20
Having not seen your code, I&#39;d recommend utilizing the above functions =
(<a href=3D"https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.=
html">https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html</=
a>) to align the times you use to populate the tx_time tag. <br></div><div =
class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div>=
<div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">-Sam<=
/div></div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sat, Oct 19, 2019 at 6:14 PM Jason McBride via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div><div style=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif=
;font-size:16px"><div dir=3D"ltr">Hey everybody, I&#39;m trying to put toge=
ther a simple bursting example. In gnuradio companion I&#39;m generating a =
PDU, using the framer block, converting to a tagged stream, and then insert=
ing a tx_time tag in an OOT python block. The tx_time tag is at the beginni=
ng of the streamed frame, just prior to the packet_len tag. I send it to th=
e USRP next.</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">The USRP is s=
ync&#39;d to PC time at the beginning of the flowgraph, and I set the tx_ti=
me tag for two seconds in the future. The USRP does seem to transmit at tha=
t time, but it generates lots of L error symbols, and after the initial tra=
nsmission stops transmitting. I can see the stream sent to the USRP via a t=
ag debug block, so I know the stream is received by the USRP significantly =
prior to transmittal.</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Any =
thoughts as to what&#39;s going on? is there something I need to configure =
on the USRP?=C2=A0</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Thank y=
ou,</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Jason</div></div></div=
>_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000006e530b05958694ad--


--===============8670939218553597281==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8670939218553597281==--

