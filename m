Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCFA9DC51
	for <lists+usrp-users@lfdr.de>; Tue, 27 Aug 2019 06:10:29 +0200 (CEST)
Received: from [::1] (port=42424 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i2SoN-0000ro-RF; Tue, 27 Aug 2019 00:10:27 -0400
Received: from mail-lf1-f49.google.com ([209.85.167.49]:36002)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1i2SoJ-0000kW-Tb
 for usrp-users@lists.ettus.com; Tue, 27 Aug 2019 00:10:24 -0400
Received: by mail-lf1-f49.google.com with SMTP id r5so8494652lfc.3
 for <usrp-users@lists.ettus.com>; Mon, 26 Aug 2019 21:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SVIuH96iOXVhTQmuaR6G9tQs5vpJvYELRNwvkIY7Dw8=;
 b=fcoWCZ8YUTo5gwscmz7wEJMmuIyfID121tCI9OjQ/QN+S0ZvZ2zQ8s4BSC179oYN7r
 pFFm15oR/bffTL1YMuAMgbTibNXqeuMpsnDZWQJNOHpj0UtY5Wt5PPrjDseg0bEDKMRn
 3CZtOAHK0LLBdUrQFsoASD6LwTOJ+6TrN+1o2HO3gOZSnfHXUC/Xowq7xxiJyuV1CX1U
 dJMzs2WwKHaNwlYp0ZQW8rSCV95F5FRQDof9hEFFele4DXBuYXntAMCYX2p1/Ab7vGF7
 gy+WIvQe4vgkp6tCptu5n1m0fI/I0PE0IgHuAe2XcSO+D3Zh5v0VRhXxkdTev4XyiXap
 suhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SVIuH96iOXVhTQmuaR6G9tQs5vpJvYELRNwvkIY7Dw8=;
 b=TwW431ityZ+oKIVwds4S9ndALEuK83NhZAQeNBBcoGcUgZW1DABRCmOuamhUehQsPG
 COJGs7mXqQqj5VBQuVK0RSrKkyvYESk31a46JCxdb/XocWs6uq6ruOHkWMdSv3cBVVN/
 9RNqIMOr50UxTJGlWuejKApoals3HnOd/0NrOAQKY6jfJezSTuUqsQs0B1mio71uHe/e
 SfZRm4ognk780bxvGsgT4mCF2zZPuoOuKRDawHuDP3iI+eoMtv4CbT0wKtlmu3A9NtGQ
 Ri23Zyz+vC7f5mgHd/OS6L9RB/eq2kUnAgnW2zMyWiTWJx3EKvJltgFKm/6uGcVdMtlc
 DkYQ==
X-Gm-Message-State: APjAAAWMUN7B9ew3dn8z7tb7qlOOY4SPF+FO4yjFTwLSRO4C+U2hyiY5
 SyJ5qBsNt6+Xj6pfhvDiavhUA/QiIanNHgIcn0fwxDXV
X-Google-Smtp-Source: APXvYqzawPYZ0rpy5xPFGuPzDewk2v1O0e8+CMkXw3dgb42Ksq5gpkglVnr+vLZHdp453x8s/dE4kNm4pU7jyThR92M=
X-Received: by 2002:ac2:5206:: with SMTP id a6mr11974727lfl.96.1566878982518; 
 Mon, 26 Aug 2019 21:09:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTT6CNq6nFT6heN6uT_rA3qz5FgRK+M4ZGLAiZANRB2bQg@mail.gmail.com>
 <CAL7q81uBKaR+SkoBZrRx2tS+FLCoJHRso-iOP40191XcAT9z8g@mail.gmail.com>
 <CAB__hTRKmYwp3wG07VsSCWEDxUNtr_6fCtqJwboPzGFRVYibXw@mail.gmail.com>
In-Reply-To: <CAB__hTRKmYwp3wG07VsSCWEDxUNtr_6fCtqJwboPzGFRVYibXw@mail.gmail.com>
Date: Tue, 27 Aug 2019 13:09:06 +0900
Message-ID: <CAL7q81tgzbW07t7XL5HTgkTquAVuOGb80ANgGVfZfrcfNq7L5A@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Subject: Re: [USRP-users] RFNoC ce_rst and clear_tx_seqnum
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4813536023707115015=="
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

--===============4813536023707115015==
Content-Type: multipart/alternative; boundary="00000000000028cee1059111714b"

--00000000000028cee1059111714b
Content-Type: text/plain; charset="UTF-8"

Calling device3->clear() will strobe clear_tx_seqnum, but it is not a
direct mapping. It also resets the upstream and downstream node
connections, If you need trigger the reset at specific times, it would
probably be easier to add your own reset settings register.

On Tue, Aug 27, 2019 at 10:55 AM Rob Kossler <rkossler@nd.edu> wrote:

> Thanks Jonathon.  How about if I re-wire an rfnoc graph?  Does that assert
> clear_tx_seqnum?  Does the UHD device3->clear() function map directly or
> indirectly to this signal?
> Rob
>
> On Mon, Aug 26, 2019 at 9:49 PM Jonathon Pendlum <
> jonathon.pendlum@ettus.com> wrote:
>
>> Hi Rob,
>>
>> Originally clear_tx_seqnum was only for resetting AXI Wrapper, but it
>> evolved into a user reset as well since it is asserted every time your UHD
>> app starts. ce_rst is only asserted at power up.
>>
>> Jonathon
>>
>> On Tue, Aug 27, 2019 at 2:29 AM Rob Kossler via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Can anyone explain the meaning of the signals ce_rst and
>>> clear_tx_seqnum?  It is not clear to me what would cause either of them to
>>> go High.  Should I expect ce_rst to be strobed each time I launch my C++
>>> app that calls UHD?  I had previously thought so, but now I have reason to
>>> doubt.
>>>
>>> Thanks.
>>> Rob
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--00000000000028cee1059111714b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Calling device3-&gt;clear() will strobe clear_tx_seqnum, b=
ut it is not a direct mapping. It also resets the upstream and downstream n=
ode connections, If you need trigger the reset at specific times, it would =
probably be easier to add your own reset settings register.</div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 27, =
2019 at 10:55 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossle=
r@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr">Thanks Jonathon.=C2=A0 How about if I re-wire an r=
fnoc graph?=C2=A0 Does that assert clear_tx_seqnum?=C2=A0 Does the UHD devi=
ce3-&gt;clear() function map directly or indirectly to this signal?<div>Rob=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Mon, Aug 26, 2019 at 9:49 PM Jonathon Pendlum &lt;<a href=3D"mailt=
o:jonathon.pendlum@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr">Hi Rob,<div><br></div><div>Originally clear_tx_seqnum was o=
nly for resetting AXI Wrapper, but it evolved into a user reset as well sin=
ce it is asserted every time your UHD app starts. ce_rst is only asserted a=
t power up.</div><div><br></div><div>Jonathon</div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 27, 2019 at =
2:29 AM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.e=
ttus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Can =
anyone explain the meaning of the signals ce_rst and clear_tx_seqnum?=C2=A0=
 It is not clear to me what would cause either of them to go High.=C2=A0 Sh=
ould I expect ce_rst to be strobed each time I launch my C++ app that calls=
 UHD?=C2=A0 I had previously thought so, but now I have reason to doubt.=C2=
=A0<br><div><br></div><div>Thanks.</div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--00000000000028cee1059111714b--


--===============4813536023707115015==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4813536023707115015==--

