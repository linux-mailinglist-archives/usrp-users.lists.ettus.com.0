Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 671BE1460E4
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jan 2020 04:16:37 +0100 (CET)
Received: from [::1] (port=59438 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iuSyv-00081g-Q6; Wed, 22 Jan 2020 22:16:33 -0500
Received: from mail-lj1-f176.google.com ([209.85.208.176]:40393)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1iuSys-0007wW-Hj
 for USRP-users@lists.ettus.com; Wed, 22 Jan 2020 22:16:30 -0500
Received: by mail-lj1-f176.google.com with SMTP id n18so1499706ljo.7
 for <USRP-users@lists.ettus.com>; Wed, 22 Jan 2020 19:16:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SYHU0+wvwlsjb1n2RPOEb75mO8QrL//pyr9E1JOUFbg=;
 b=rE3EqMdPsdLQvUslA+zYAgIaLil6h/keN68Ced7y8RevmE8bnFrlzqCE/oFVJcLHLn
 z+ID8gsaHqcqiXAlzJ74F/f62V/3nUr9jd+M/81AzmQAJt0ft21NYt2ZswMbBmWUAGuo
 fxrZllglxdeVCa2iIRhRX07w8bYyWTgUIovOmvxTEkZRZjUjwEgDRny8yHXnVKzW7sP+
 iVw9KzlEYVoDqSUnYH8mWs2ikIjriwE/JgDxq1L7eLxA5D1FxAxfR39Zhu8YfHn/KzjM
 Iuv65eHn6GVYN9aTU2SZV4XPcIuGW0w/9bMj/HCOtOWBIqwAzbrxC+g0u/3cSRSWrT1k
 oQkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SYHU0+wvwlsjb1n2RPOEb75mO8QrL//pyr9E1JOUFbg=;
 b=AwzPxD4if9r9BrbaoOZHDmmySjEYA9edNTWRWuhE2F7J+Jt5XzwcTrFYcxS2zep4l2
 /BmK+u0NDiELkWh9EEQ0Y2s5zkoaFWLCbjnRS5iMRk4NSHVmZWuoATHMfX8neZn5q636
 N0ESx9ph5HO6yllbcruYymGpdLUJmB7RWWE5jSdih8K/BZHX0ZHJH6AiTyQHBGE+GoFf
 wHQIGtbhMoK4xxFQfsMGltL9WJEJbhI48WSSRqBzZvheB1aSSv5N1SDTHL2yjw7hHCsC
 +LInM/aJg3O4dNAddcr5b0dLeuCpgciURbfsqEohU+neek7u/rxDlO8JTAis4LdSlNCu
 memg==
X-Gm-Message-State: APjAAAVTZoZRaUYfn+2dAiA0nMAuRycIHbGKoxpo9qSAIOD9Eg9F5Up+
 J5aBkN0UAxfMcUwZXYUULLtOEwInemXxtmnKtrqEA8+t
X-Google-Smtp-Source: APXvYqy914S5Ngohu8ZTd5wTb+mgbQOxtSO/mcPPG2mrIyS7BnkSV8vjvft0xu4CQo2ueZbEsaV8hLNmBlKyGEow8AI=
X-Received: by 2002:a2e:9157:: with SMTP id q23mr7826405ljg.196.1579749349205; 
 Wed, 22 Jan 2020 19:15:49 -0800 (PST)
MIME-Version: 1.0
References: <2dc6ba577fbc40a293a79f46616d930f@umass.edu>
In-Reply-To: <2dc6ba577fbc40a293a79f46616d930f@umass.edu>
Date: Wed, 22 Jan 2020 22:15:12 -0500
Message-ID: <CAL7q81uGokoPr1iYeze-h2q8N7jgqpu23zoAfvfOf8m4uqYbZQ@mail.gmail.com>
To: Xingjian Chen <xingjian@umass.edu>
Subject: Re: [USRP-users] E312 RFNOC timed command for setup gain
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>,
 "usrp-users-bounces@lists.ettus.com" <usrp-users-bounces@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1911665804649597635=="
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

--===============1911665804649597635==
Content-Type: multipart/alternative; boundary="000000000000cb3d11059cc60ed3"

--000000000000cb3d11059cc60ed3
Content-Type: text/plain; charset="UTF-8"

Hi James,

The Siggen RFNoC block does not support timed commands.

Jonathon

On Wed, Jan 22, 2020 at 3:32 PM Xingjian Chen via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> Is there a way to use timed command for E312 rfnoc siggen module for setup
> gain?
> I am trying something like below. Is this the right way? Thank you.
>
>             uhd::time_spec_t cmd_time = time_ref +
> uhd::time_spec_t(i*256/28e6*10*2000*10);
>             ctrl_siggen_ch0->set_command_time(cmd_time);
>             ctrl_siggen_ch0->set_arg<int>("gain", 3086) ;
>
> James
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000cb3d11059cc60ed3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi James,<div><br></div><div>The Siggen RFNoC block does n=
ot support timed commands.</div><div><br></div><div>Jonathon</div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, J=
an 22, 2020 at 3:32 PM Xingjian Chen via USRP-users &lt;<a href=3D"mailto:u=
srp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_6997866327582484923divtagdefaultwrapper" style=3D"font-s=
ize:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"=
ltr">
<p></p>
<div>Hi,</div>
<div>Is there a way to use timed command for E312 rfnoc siggen module=C2=A0=
for setup gain?=C2=A0</div>
<div>I am trying something like below. Is this the right way?=C2=A0Thank yo=
u.=C2=A0</div>
<div><br>
</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd::time_spec_t cmd_time =
=3D time_ref + uhd::time_spec_t(i*256/28e6*10*2000*10);</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ctrl_siggen_ch0-&gt;set_comm=
and_time(cmd_time);</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ctrl_siggen_ch0-&gt;set_arg&=
lt;int&gt;(&quot;gain&quot;, 3086) ;=C2=A0</div>
<br>
<p></p>
<p>James</p>
<div id=3D"gmail-m_6997866327582484923Signature">
<div id=3D"gmail-m_6997866327582484923divtagdefaultwrapper" dir=3D"ltr" sty=
le=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,s=
ans-serif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot=
;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,Emoj=
iSymbols">
<div style=3D"font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,=
255);font-family:Calibri,Arial,Helvetica,sans-serif">
<div><font size=3D"2" style=3D"font-size:10pt">
<div><span style=3D"font-size:9pt;color:rgb(0,0,0)">
<p><span style=3D"font-size:9pt;color:rgb(0,0,0)"><span style=3D"color:rgb(=
0,0,0)"><span style=3D"color:rgb(0,0,0)"></span></span></span></p>
</span></div>
</font></div>
</div>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000cb3d11059cc60ed3--


--===============1911665804649597635==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1911665804649597635==--

