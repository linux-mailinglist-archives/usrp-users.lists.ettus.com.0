Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qL7HOiHI72knGAEAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Mon, 27 Apr 2026 22:33:37 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8CD47A11F
	for <lists+usrp-users@lfdr.de>; Mon, 27 Apr 2026 22:33:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A873638A892
	for <lists+usrp-users@lfdr.de>; Mon, 27 Apr 2026 16:33:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1777322015; bh=fsNi+I3Qvyp2l9rg8YfS11UlN2U9WaqdhssdaSSLTwg=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=K4f2kjggQamGHIFJI1f6QUMsNkRUTj/m95JQaSg5HgAo7hJE5oLZQOHFmJWx8yD8y
	 oeU3OIOumnhdrdZ8IwUxFhGiZfPYovL9vP2VNvVBH/n6oEQimLTpT5qEe2q5sDuMnS
	 yfU1yIuGOpgc+kbN3QHuRiQ2tq7KR63g0u0nj3JmcHd7n3/zDG2pYFSlkJgvmBoz/t
	 lL/mTTeH7XN4L9pVYGImwTQXedX1ux6WadbMgwkQPAACM5KD8UJgNBEnnrhWNwsp/M
	 BVC1npilOiurSgV7XsbfqAhiRWIqtTC5q5xMl1alQKm+Fw6Dl7thxT4kPavUTmGhsh
	 zmj+6pW6anU5Q==
Received: from mail-yx1-f46.google.com (mail-yx1-f46.google.com [74.125.224.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 5ED4338A662
	for <usrp-users@lists.ettus.com>; Mon, 27 Apr 2026 16:32:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="ibIbtAmU";
	dkim-atps=neutral
Received: by mail-yx1-f46.google.com with SMTP id 956f58d0204a3-651c5d525f6so9667255d50.3
        for <usrp-users@lists.ettus.com>; Mon, 27 Apr 2026 13:32:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777321936; cv=none;
        d=google.com; s=arc-20240605;
        b=BRSik22uEUghALOVLsej5lHfVRp/r8oH6q8TDSaZcMa2KGLhRjm0wYcP2CceWtq3MV
         XBNUssXTJOFMBom69kggV+0fbctavV12ii1b15cfxoSMqZGudHbw8y1XyqEHMO5AfkB/
         0tRQdtAJBTtOgT2Ik9RHEFoOfpBvi/v+EWmJLFm1qT0hMKVCD6H4C7Wj3O4H5eUxDm3Z
         orHiCWt3LlUroLJnW3DUiALjdc4wzzy4kd7t5PBD8866ka1OvIKi6us8e/N2y3vg20Un
         kpkt5wvohhduk5Dhj9SsftlxPJBPQ2A2/YIUdW8/9gY07oIfjbL8znMnnu0DxThQAoO+
         /5CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nXR91qgwMIzEOZxQ+NiRea62twxCge0c6bS9/XGkWrg=;
        fh=bveq6NBuWncXn6Uhzsw2gIDqOuaW3zcquWjSDVV701E=;
        b=iGxdjwczAM36ii7fZ4mr/V94YgjDJbNQoia+GanidELBbdUSB7UEiyesyuhhSSfT9g
         vhfld+FQLifLZoyB5LIaJsVnr3U2zTNOZ9ULVs957Nvs2fYbZymaBqfW/dYymuruVTaJ
         UApuBup+jFmOobR7jy4EtPq08G/R6A1XsvHEG9ttMjmTNQV55ErvFhQjnnCQLjgDRlxF
         5nfVwvVPjKYaVDfBweSGTapzQt9O61kyYXtC7lkRAowZWfNjdW5ZLbWKOFWEmT71rFS+
         gSC4s5kpfhEY+Uu8qtdiVfE9e+5YQaaK6H7yQA1XI0AnmvpL3rCEnTXB47iycpn/jX5E
         7SZA==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1777321936; x=1777926736; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nXR91qgwMIzEOZxQ+NiRea62twxCge0c6bS9/XGkWrg=;
        b=ibIbtAmU1CJ2lSF0w+pFImH6ooP9qEA8sC3Cp9crwoDdUp7G+X3jDAQu1Lch4EwYdA
         J71Ca2zytD6IqVfgdNbcclkfelYj0kNQZUXdC9LxOdpMvDpdipO23aYAGf1ytPu63m7L
         NHWbhFd7eIYjgxsh0bx6f1b7gBFgZpgpVTTulVuou1bnM8KHfAw4osyUyyeP3iuGB9BF
         tMbMW8Vy+Zy21Il01vDcXnCF9eRgU2flWpneFn1RE7v9tPBN7dSHlDDMzYNDX/GJ4Skt
         Yvn7kSWgvRKsZ2g0RJRZwUkjRvXhji7W+toEvjphvc/7/MQYuTA3VpzYVdzmw95Z8ixz
         nZig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777321936; x=1777926736;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nXR91qgwMIzEOZxQ+NiRea62twxCge0c6bS9/XGkWrg=;
        b=lHF4QWxTbyasQkOJZaNO5NLQdXICI5bFcpd3mnbgjwU9EJk6tuXjC58pWskONzlYJz
         SmARFUxYgDMe3ROOOzzshpxr6oj+ObmEQ7LlnZLrIZRNgCKuzgM7hj/y9SckUjd0hpfw
         FxzejX5JlaGa0HZ3wqMX1/waA0/nu9rKhXk0bUuHtGrepNwj581MP0oIaCBaiQAObcgo
         LjIAb6Z8Gj2kqEu1PMe9HFgRDwhfEvOXWi04txMYNNSS2Yk5r19rlYBoXg2Q4QsFvZhb
         QVsayiau/gFveu8YOLIpfui6Ccu4qs0qEiuz/jOaj1Zdb6Df2zYI1zqjNIVOR3pGO0Vz
         2U/w==
X-Gm-Message-State: AOJu0YwO1pKEw8BFPw+4v5lQHDBdg016wCb4ZHcUIchssqAGFnvHt4/R
	iu4AwFquO6DqJnbCYGqLRqTd/umX3xF0eQw/JG/rbTp/copg5WibEd6FsGlLSpM4JzmXqRLHcLi
	l66QypbTsO+hdsfJl3WYHIXy6ttg0XKEZJhvCP7/L
X-Gm-Gg: AeBDiesqmGPFoImWAwQfNal0WvH3hxmvWsj2SiCyvhZ/Cj9CPkVRF+cD+sLzEBIdQQZ
	WS1zWgtpzrf8EseQzS1m+Z2CUXnDPj/Kbuzn1/MbxDiaatGd0TD8uw9VHLGDrv+Cs99fKyY/U8T
	ur00gPGKZSP9rilrSJZl/16KF2GkaLg4GAxCG+UynMk3915TWAZPN60XKD2O/hP8AlN9aB5LDv4
	fFIhVPvnf/xRrJ97mb6Eahm9/wyb7Vvyly7ILXQPbTgkLmNy7JcFeuG8jTqM7xuK3hMJCKdNGA0
	afRrMvYhMaS0MFqdw821KxR1b/nADbsKubdKUYZvm/JRFVv8gw==
X-Received: by 2002:a05:690e:43cf:b0:651:bf58:446b with SMTP id
 956f58d0204a3-65beed64406mr46622d50.10.1777321935426; Mon, 27 Apr 2026
 13:32:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTQrK_wswceCEgReCGHVMw6mpKEzFvznmVRAs-C1DzOy+g@mail.gmail.com>
 <CAEXYVK74FA4ukyJmW1sACH=88CqMwpZGADA=XLLfPo3wM9ehFA@mail.gmail.com> <CAB__hTSNVkq7ZAqXw-uhmp8Sw-OSFp3_7m7dbsDH0TN0nq7jRg@mail.gmail.com>
In-Reply-To: <CAB__hTSNVkq7ZAqXw-uhmp8Sw-OSFp3_7m7dbsDH0TN0nq7jRg@mail.gmail.com>
Date: Mon, 27 Apr 2026 16:32:04 -0400
X-Gm-Features: AVHnY4I-r6UoOjxwng7-yh5dn6Wz95nsJ3J7LOR-1WUnew8F7Kv5bjH591uTkrw
Message-ID: <CAB__hTSMk5DN_je96AahUrD40jsRzRPVwBwtVMxekJdDg-xtqg@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: TGXXWTMO2IB23OENHHPZWIKGJM75FDP7
X-Message-ID-Hash: TGXXWTMO2IB23OENHHPZWIKGJM75FDP7
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: New Timed Rx/Tx complex gain feature 4.10
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TGXXWTMO2IB23OENHHPZWIKGJM75FDP7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============9031114703635179754=="
X-Rspamd-Queue-Id: 0F8CD47A11F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.09 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[172.104.30.75:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[ettus.com];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	R_SPF_NA(0.00)[no SPF record];
	R_DKIM_REJECT(0.00)[nd.edu:s=google];
	HAS_REPLYTO(0.00)[rkossler@nd.edu];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[usrp-users];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,nd.edu:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,emwd.com:dkim]

--===============9031114703635179754==
Content-Type: multipart/alternative; boundary="0000000000009cfe70065077025b"

--0000000000009cfe70065077025b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

So, it turns out that there is a new example program txrx_complex_gain.cpp
<https://github.com/EttusResearch/uhd/blob/master/host/examples/txrx_comple=
x_gain.cpp>.
This is very helpful for understanding how to implement the complex gain
feature.

However, after reviewing it I'm wondering if there is a bug in the
example.  The example includes a call to "usrp->get_radio_control()" which
returns the radio control sptr for a given "channel".  However,
the implementation of the function (in multi_usrp_rfnoc) returns the radio
control for the RX channel (not the Tx channel).  Perhaps the assumption is
that the radio control is the same for Rx channel N and Tx channel N. But,
I'm wondering if that is a bad assumption.  If the user reorders channels
via subdev spec, isn't it possible for Rx Channel N to correspond to a
different radio control than Tx channel N?  If so, then it seems to me that
the complex gain control example will apply the specified Tx complex gain
to the wrong radio.
Rob


On Wed, Apr 22, 2026 at 5:31=E2=80=AFPM Rob Kossler <rkossler@nd.edu> wrote=
:

> Yes. Thanks!
>
> On Wed, Apr 22, 2026 at 5:22=E2=80=AFPM Brian Padalino <bpadalino@gmail.c=
om>
> wrote:
>
>> On Wed, Apr 22, 2026 at 4:59=E2=80=AFPM Rob Kossler via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi,
>>> The change log indicates a new timed complex gain feature.  But, after
>>> looking through the manual, I can't find the relevant API function call=
s.
>>> Any advice?
>>>
>>
>> Seems like maybe it's in a weird place:
>>
>>
>> https://github.com/EttusResearch/uhd/blob/9c1a361ad896f7ce0d9fd2f861ae88=
a67f2ea929/host/include/uhd/features/complex_gain_iface.hpp#L64
>>
>> Does that help you out?
>>
>> Brian
>>
>

--0000000000009cfe70065077025b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">So, it turns out that there is a new example program <a hr=
ef=3D"https://github.com/EttusResearch/uhd/blob/master/host/examples/txrx_c=
omplex_gain.cpp" target=3D"_blank">txrx_complex_gain.cpp</a>.=C2=A0 This is=
 very helpful for understanding how to implement the complex gain feature.<=
div><br></div><div>However, after reviewing it I&#39;m wondering if there i=
s a bug in the example.=C2=A0 The example includes a call to &quot;usrp-&gt=
;get_radio_control()&quot; which returns the radio control sptr for a given=
 &quot;channel&quot;.=C2=A0 However, the=C2=A0implementation of the=C2=A0fu=
nction (in multi_usrp_rfnoc) returns the radio control for the RX channel (=
not the Tx channel).=C2=A0 Perhaps the assumption is that the radio control=
 is the same for Rx channel N and Tx channel N. But, I&#39;m wondering if t=
hat is a bad assumption.=C2=A0 If the user reorders channels via subdev spe=
c, isn&#39;t it possible for Rx Channel N to correspond to a different radi=
o control than Tx channel N?=C2=A0 If so, then it seems to me that the comp=
lex gain control example will apply the specified Tx complex gain to the wr=
ong radio.<div>Rob</div><div><br></div></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 22, 2026 at 5:31=
=E2=80=AFPM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_b=
lank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr">Yes. Thanks!</div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 22, 2026 at 5=
:22=E2=80=AFPM Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com" ta=
rget=3D"_blank">bpadalino@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Wed=
, Apr 22, 2026 at 4:59=E2=80=AFPM Rob Kossler via USRP-users &lt;<a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettu=
s.com</a>&gt; wrote:</div><div class=3D"gmail_quote"><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi,</div><div>The change =
log indicates a new timed complex gain feature.=C2=A0 But, after looking th=
rough the manual, I can&#39;t find the relevant API function calls.=C2=A0 A=
ny advice?</div></div></blockquote><div><br></div><div>Seems like maybe it&=
#39;s in a weird place:</div><div><br></div><div>=C2=A0=C2=A0<a href=3D"htt=
ps://github.com/EttusResearch/uhd/blob/9c1a361ad896f7ce0d9fd2f861ae88a67f2e=
a929/host/include/uhd/features/complex_gain_iface.hpp#L64" target=3D"_blank=
">https://github.com/EttusResearch/uhd/blob/9c1a361ad896f7ce0d9fd2f861ae88a=
67f2ea929/host/include/uhd/features/complex_gain_iface.hpp#L64</a></div><di=
v><br></div><div>Does that help you out?</div><div><br></div><div>Brian</di=
v></div></div>
</blockquote></div>
</blockquote></div>

--0000000000009cfe70065077025b--

--===============9031114703635179754==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9031114703635179754==--
