Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 687446D6CC6
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 21:01:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9E0193848A0
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 15:01:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680634866; bh=E9N2uqSmmxiSSpLjByRmYe/Iim7SjXcrBJQz2JYdeU8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=kjUUh7tAV6lbs26Z24TVXquqyRLZFBe49zo2p3aTFFkI+NXxp9uZov9YwAPs8RE0R
	 L6cU4XH8YQZ6Yw0M873EVq9h9l3puwd5eRg6gW3Fh9oXbSjHVAQeqVpa70j6jizOb4
	 q8sgsTvZtXIbVg05lw0cWLJ8Jvw/Jlzb6IM87NEulCtYFm6uCpq6haeuioBn7Et5ld
	 3RYoq3auklIxj0EpuUhUcRlrlXXDnL8VvL4KYummSjCPHm/WvEzXCBq7kd7z5082U5
	 LWeg9HfvuOOwwHc0Lj8zC7Ggmwxo/3p7VJL17BaR5zQ6GGT+djhCnCA8NwGy2fVwBk
	 v/+6ttbY85HjA==
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 14C2538485D
	for <usrp-users@lists.ettus.com>; Tue,  4 Apr 2023 15:00:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WoSzr+Se";
	dkim-atps=neutral
Received: by mail-pf1-f175.google.com with SMTP id u38so22108558pfg.10
        for <usrp-users@lists.ettus.com>; Tue, 04 Apr 2023 12:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680634832;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qoYDhTBDURS+2529bSCIO6elI4OlUlt8kJeTeSvX4i4=;
        b=WoSzr+SeBEAaDAzL1FNa5dUjETs34iv13botwg+J9JpQ43oICSCig1Cdyw8SDAGMRa
         9y1AjQoqT+GmRA5O8E3PHZ4xfRtEkN7v/KwqS+VX+epo6mg+Tnuiriv4ttM7+cxDx+Lq
         e287QcDzPj2V7YVUqLCEhp8+Zc/dDoyWQT1ngJXbg6K6efa5l29AT7Kr52uvd6eR0oIw
         Fhl//8zfr5anQNIQEbwrIlgGRGO1n2dhyz2QQkZm24MGjEOKgE/ac9Dj3Qe8+D8otnQs
         XyS18I7Q8THmbDnLJ87yrgaWVb1FV8sg9hihy+WcfDCiHLGBAc24a6VGe+c5AvbEr5AW
         71pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680634832;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qoYDhTBDURS+2529bSCIO6elI4OlUlt8kJeTeSvX4i4=;
        b=zdlLNndLOesSo4E7QXLg+cPu1yeIlZvCUeKNDf9JFC6sHwOqGTlU3DtDKZvPD1yik3
         ZTGEZ1hSd7CfX15y+Ypw9NE7Y+BCH0kSVgiCSuQ7D/eghCaWD6z+Lx2FyknKM3ynNpx2
         2rWDkkJCqBHUuJ1km0uEmYfriIlazizmPLOOFmLhS6G2JBZ08CMhTgCTLDqCknGRgGC6
         +Jq+0GJhOeugR1WtUyj0zOVa6JrlqZ+am7xsRrFLbDej/hXu1Ao608mFfmQO76fXociI
         TI8pnRMnSk5Os/U4swhk91oo/XML83siB+blEdltXGiBZUZA5tU3xYNDR0qt+2ega0v6
         4zpg==
X-Gm-Message-State: AAQBX9ddkvlq1rVrvQMfUyCMQhSpREtp5qsPxKrxBIyuFS1+u3Nse7bR
	sG4gRdSolpwY7+fhgj7qQRDqhXU9/eNEZ8/YMUdYXPxM
X-Google-Smtp-Source: AKy350bp2Aydj3h7hhjUesv3z6gvQkjdzWK2w2L481cqQxisa1t8AZQSKe9Ld9RkXb3fHc4fcACypaeRbLowjbH9E98=
X-Received: by 2002:a05:6a00:988:b0:5e6:f9a1:e224 with SMTP id
 u8-20020a056a00098800b005e6f9a1e224mr1864551pfg.6.1680634831881; Tue, 04 Apr
 2023 12:00:31 -0700 (PDT)
MIME-Version: 1.0
References: <Kmi3kEahfjMhcm2ysTSYK0BFwrGzDFcHc03SWoMYQ@lists.ettus.com> <CAB__hTQBSHVxZ27sx3Ug76uQ6zOsN_+C-9_i9ZexpSxmCkuSYw@mail.gmail.com>
In-Reply-To: <CAB__hTQBSHVxZ27sx3Ug76uQ6zOsN_+C-9_i9ZexpSxmCkuSYw@mail.gmail.com>
From: yan zhang <yanzhanggc@gmail.com>
Date: Tue, 4 Apr 2023 15:00:21 -0400
Message-ID: <CAJPBMpWWSUDvnGETXXUV9KLudzW7ka9f6o2zQ-ybx5FxLASUog@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: POGUNYCFEY6NJPXQRJKS5CRFOTHXX2CW
X-Message-ID-Hash: POGUNYCFEY6NJPXQRJKS5CRFOTHXX2CW
X-MailFrom: yanzhanggc@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: what is the purpose of issue_stream_cmd() for the rx_streamer?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/POGUNYCFEY6NJPXQRJKS5CRFOTHXX2CW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7651475492954048955=="

--===============7651475492954048955==
Content-Type: multipart/alternative; boundary="00000000000026caee05f8874a92"

--00000000000026caee05f8874a92
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

So in general, we can just issue stream cmd to one source rfnoc block and
the cmd will propagates to all down stream blocks. Is this understanding
correct?

Thanks!

On Tue, Apr 4, 2023 at 11:27 AM Rob Kossler <rkossler@nd.edu> wrote:

> issue_stream_cmd() tells the Rx radio to start sending samples. You
> typically call this as rx_streamer->issue_stream_cmd(), and then the
> command "propagates" to all the blocks in the graph (such as DDC and then
> ultimately the Rx Radio).  Without this command, the Rx radio will not
> begin streaming such that your call to "recv()" will timeout for lack of
> samples.
> Rob
>
> On Tue, Apr 4, 2023 at 10:58=E2=80=AFAM <yanzhanggc@gmail.com> wrote:
>
>> Hi all,
>>
>> Does anyone know the purpose of issue_stream_cmd() for the rx_streamer?
>> When I use the rx_streamer to stream data to the host, I just call the
>> recv() method.
>>
>>
>> The question is what is the purpose of issue_stream_cmd() for rx_streame=
r
>> in uhd?
>>
>>
>> Thanks,
>>
>> Yan
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--00000000000026caee05f8874a92
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">So in general, we can just issue stream cmd to one source=
 rfnoc block and the cmd will propagates to all down stream blocks. Is this=
 understanding correct?</div><div dir=3D"auto"><br></div><div dir=3D"auto">=
Thanks!</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Tue, Apr 4, 2023 at 11:27 AM Rob Kossler &lt;<a href=3D"mail=
to:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><div dir=3D"ltr"><div>issue_stream_cmd() tells the Rx radio=
 to start sending samples. You typically call this as rx_streamer-&gt;issue=
_stream_cmd(), and then the command &quot;propagates&quot; to all the block=
s in the graph (such as DDC and then ultimately the Rx Radio).=C2=A0 Withou=
t this command, the Rx radio will not begin streaming such that your call t=
o &quot;recv()&quot; will timeout for lack of samples.</div></div><div dir=
=3D"ltr"><div>Rob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Tue, Apr 4, 2023 at 10:58=E2=80=AFAM &lt;<a href=3D"mai=
lto:yanzhanggc@gmail.com" target=3D"_blank">yanzhanggc@gmail.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi all,<=
/p><p>Does anyone know the purpose of issue_stream_cmd() for the rx_streame=
r? When I use the rx_streamer to stream data to the host, I just call the r=
ecv() method. </p><p><br></p><p>The question is what is the purpose of issu=
e_stream_cmd() for rx_streamer in uhd?</p><p><br></p><p>Thanks,</p><p>Yan</=
p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div></div>

--00000000000026caee05f8874a92--

--===============7651475492954048955==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7651475492954048955==--
