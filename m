Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 935C022CCD8
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jul 2020 20:15:18 +0200 (CEST)
Received: from [::1] (port=46598 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jz2E0-00081l-83; Fri, 24 Jul 2020 14:15:16 -0400
Received: from mail-ot1-f52.google.com ([209.85.210.52]:36084)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dwwkelly@gmail.com>) id 1jz2Dv-0007t5-NS
 for usrp-users@lists.ettus.com; Fri, 24 Jul 2020 14:15:11 -0400
Received: by mail-ot1-f52.google.com with SMTP id l27so501203oti.3
 for <usrp-users@lists.ettus.com>; Fri, 24 Jul 2020 11:14:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=ZG16PxewB7L7Oe46KmgTNwZWeqZWYmJwU4Q2H/ZiTcg=;
 b=coHAx3rzylYezzvTA+LlzjBo7lbr/udv2q7Cz9f1/WsBNCQ2VEv1DyZwCMze0jmHct
 sJsXf6q+BWtXtZ30xOeQUSj9U2rTDLesQn+TvfFJ5oJa+buP7kuGFR/sZCVMe5oTeaRr
 +F2cxzn/XSUNNHYRbX+1r/3W+PtjutWYZ/nMcZG4LcWLBvLKsiCxzs6hgD8pZ+a1Iqr7
 pnnwuQBGo8PrgouiXcoX44y9jkWs1dIRo8MIjhtRotsSju99qOXQUMtVZnBIG+XSOmbI
 2Q3K7I+WZRhFB9rwezuB2JK1bLcF6aD5AfkZMfb05kNwuA+qZD0SxiRsy4g2HiIaBMhC
 Z4Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=ZG16PxewB7L7Oe46KmgTNwZWeqZWYmJwU4Q2H/ZiTcg=;
 b=G26Ul7jJtnt4iSC4xC20MJ1cHqqKN9xbF7B4ARTTFNyU3ptXMzwWt9tO4uGXPFhTjH
 CArZdhYn+GlSLos79urMno35y+iDQNwxR3D2UtIwpZx/6J0c0ViMKRi9LGiCTpXJoLzZ
 D/DwCrwAdfogJVmvdFdQNaq4lz/G5WBezgPpX4MMK/jlpinvpPTn2LPvEZQZZh8DDXR+
 ylonP7pXby2cYjThQNw++6G0G76bFZ+cjeIqEOdHM1dm2L3TcDgx4N7WOYeUc+/OHIyL
 ZX82uHzyO+a8+yzQa1jzO9Z2sAK27l+KhdH3aOZq565fRpBQvTY5XIQWXm2xxVAhVQme
 13qg==
X-Gm-Message-State: AOAM533cHqw7J5R1YNKaoIk1NvWrMwHtJiBCvp+0yFrno3YosQhjMKoA
 4GvbTqXBsxu6SCH8DTuSigFYERfVUrG/o5GHVSAkueuK
X-Google-Smtp-Source: ABdhPJwtaenB0x23NrSI6ooecEN1xTWHl/L8XaF0nUqjsSmXyphTPSaFW0agsYJa8JnffwkYHDF4CkyaaaVQYy1HxoY=
X-Received: by 2002:a05:6830:1c2f:: with SMTP id
 f15mr9772681ote.359.1595614470546; 
 Fri, 24 Jul 2020 11:14:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAANLyua6xgH+TsH2bqmKLMu4buMm93QqYQ-JPy+vd4F9aB26SA@mail.gmail.com>
 <81D12D30-8BD2-4ED2-906C-E9F7F08B2B82@gmail.com>
 <CAB__hTTc80gTmTWXK2GnsBQpdAj6vZ_=oV_Nc_8oLs0vRzcMGA@mail.gmail.com>
 <CAANLyua3t1JCyUPPopWCjekFm9okhoycbvvFxNwkBNHXN5kgwg@mail.gmail.com>
 <5F1AF0FC.80106@gmail.com>
 <CAANLyuY0Db2CXjRrW9Ht_8AL3RMuRhFde6Zyapq_hvNHm9iHrA@mail.gmail.com>
 <5F1B12B6.1010705@gmail.com>
 <CAANLyuacSbfH-t=vwPODS8O3f7WSD+sLWBV1KjRhWB9VaaSeMA@mail.gmail.com>
 <5F1B1972.50104@gmail.com>
In-Reply-To: <5F1B1972.50104@gmail.com>
Date: Fri, 24 Jul 2020 14:14:19 -0400
Message-ID: <CAANLyuaXOu0UkFJqKHrfddn=Y_8atydU-WxYOO90ehmukwEnoA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] tx_stream->get_max_num_samps() too low
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
From: Devin Kelly via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Devin Kelly <dwwkelly@gmail.com>
Content-Type: multipart/mixed; boundary="===============2410177366378086906=="
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

--===============2410177366378086906==
Content-Type: multipart/alternative; boundary="000000000000b72ea805ab33f118"

--000000000000b72ea805ab33f118
Content-Type: text/plain; charset="UTF-8"

Ahhhhhhhh I see.

Thank you very much, I'll bookmark this page.

Devin

On Fri, Jul 24, 2020 at 1:25 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 07/24/2020 01:04 PM, Devin Kelly via USRP-users wrote:
> > Well the documentation says RX stream only but it turned out to work
> > for TX streams too... so the documentation writer should be embarrassed!
> >
> > In my first message I verified that the HW actually sends 8100 byte
> > packets using ping, that is unless tcpdump is lying to me or
> > re-constructing IP packets in a way that's transparent to me.
> >
> > It seems that there's a frame size that's hard coded in
> > x300_eth_mgr.cpp and that's what was causing me trouble.  I got
> > get_max_num_samps up to 1996 and so far that's helped the actual
> > application I'm writing substantially.
> >
> > Devin
> >
> Ah, that's just establishing the *defaults* if you don't otherwise
> specify the send_frame_size, documented here:
>
> https://files.ettus.com/manual/page_transport.html
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000b72ea805ab33f118
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Ahhhhhhhh I see.=C2=A0 <br></div><div><br></div><div>=
Thank you very much, I&#39;ll bookmark this page.</div><div><br></div><div>=
Devin</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Fri, Jul 24, 2020 at 1:25 PM Marcus D. Leech via USRP-users &=
lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
On 07/24/2020 01:04 PM, Devin Kelly via USRP-users wrote:<br>
&gt; Well the documentation says RX stream only but it turned out to work <=
br>
&gt; for TX streams too... so the documentation writer should be embarrasse=
d!<br>
&gt;<br>
&gt; In my first message I verified that the HW actually sends 8100 byte <b=
r>
&gt; packets using ping, that is unless tcpdump is lying to me or <br>
&gt; re-constructing IP packets in a way that&#39;s transparent to me.<br>
&gt;<br>
&gt; It seems that there&#39;s a frame size that&#39;s hard coded in <br>
&gt; x300_eth_mgr.cpp and that&#39;s what was causing me trouble.=C2=A0 I g=
ot <br>
&gt; get_max_num_samps up to 1996 and so far that&#39;s helped the actual <=
br>
&gt; application I&#39;m writing substantially.<br>
&gt;<br>
&gt; Devin<br>
&gt;<br>
Ah, that&#39;s just establishing the *defaults* if you don&#39;t otherwise =
<br>
specify the send_frame_size, documented here:<br>
<br>
<a href=3D"https://files.ettus.com/manual/page_transport.html" rel=3D"noref=
errer" target=3D"_blank">https://files.ettus.com/manual/page_transport.html=
</a><br>
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
</blockquote></div>

--000000000000b72ea805ab33f118--


--===============2410177366378086906==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2410177366378086906==--

