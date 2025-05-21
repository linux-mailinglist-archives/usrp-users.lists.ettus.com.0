Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 30DB6ABECFC
	for <lists+usrp-users@lfdr.de>; Wed, 21 May 2025 09:23:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 81278384E7B
	for <lists+usrp-users@lfdr.de>; Wed, 21 May 2025 03:23:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747812182; bh=SQW3fHuCRVN83+TnfMYvpLFQZpffSQAKF2ZDrOEMiAs=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=DrEL6JIMpEgbAHSSlBV8YbtCiRpbVs7g+KLPipWf9aTTczkkoOWiKHkVXwzD8mxmU
	 Cq3Mnr7nz4uGWT3+cY8loQ0OoKShai8J5qnSO9hmsBDgiHlaItNQsOevV1BCPh4G86
	 aRDQRfCJMUhcPlYjn92Vi4CYkhvFS3lnUetFUGNYxurd6v824WNAiV7zvYPc+k4f9k
	 WjjB7RRJ/vz7mwO95kDkUAQbxRzbC3LikhEwS+qsWafh0BU9SPyRiRzocMOG235NXW
	 1S9eh+3Q/6QhVPw381bV+VIG7mNLlKvZJlDll+hlS/quOCwfa25/L6niQxKeglgPuC
	 HI+G7OvODV1Nw==
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by mm2.emwd.com (Postfix) with ESMTPS id E1BD8380A36
	for <usrp-users@lists.ettus.com>; Wed, 21 May 2025 03:22:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="0jBGGdc8";
	dkim-atps=neutral
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-ad5273c1fd7so1064807166b.1
        for <usrp-users@lists.ettus.com>; Wed, 21 May 2025 00:22:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1747812163; x=1748416963; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jvoUm5JpVe5bluo+0jKownTVPDl/os6yJvrcPRTLJGo=;
        b=0jBGGdc8FJNBLaX6+X4R2B6ulWctATKXxYlLA7YNrj51Qzb2G7JbIx3gu6ALOz6WH9
         MGliwLOJdEMt4yjthddd3ND01bvSctG29n3KToqApbfT74J7V22ej5qk0PZxHeJSK8+F
         YQYO2jx5dsQjJAU88t2pJ73zUaxWF6h/3QhGxVCH6WeixQR3tnpOPdzS2WBGXse9MmR6
         IPUlQRkpWTIvn92+vD2ubW4tbHukMFDG8iEzC+s8wnAI30svdNhvnapZ4f5jiDUGonc2
         lVJ5GU6gD2/mrShyZht6xElekeKbSf4nJoWCXxkcncPWhJ98fbnPiNgSvftR+o5jQpaD
         Jwqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747812163; x=1748416963;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jvoUm5JpVe5bluo+0jKownTVPDl/os6yJvrcPRTLJGo=;
        b=d6lZ+lS8JcwgJYmLEYv6PaqwCpKK5m3u9rv1RueUZv5kkCZ2JlsnslohXB4cmy8iD7
         BoReWg1k7YjimbtOmMJGiKHKazMKj7HoeJGYWbMO+JoniothEY8VS6pLAPeGCcUN5fxN
         U0sKSXGssFjkssyJu8cFR4Hpx4FJI4YoLHigLPQ9ntvD8+SYKXjB28UhKjiatKnVWx+k
         BNvowYJ7Y36c4nLOPfuHEfJ3S4riT2rZOyYRN+xHnwzDZZ0Uh2tvFwsBm720nDUwC4GH
         R7OOP5HOFMm8f3gr4Jb06bqoUFhA83UK+Ygax8wWrJ8NvuJYsn+4/Q421uwJKNgYe44m
         yW8g==
X-Gm-Message-State: AOJu0Yxr3W19zOAHlgidmusqvk28S/2Qg6joIHBK2c8Plivp/cfbl/ma
	VT3NYJWnVtaekgv+p+sb9L47T/V1Jf/5AstLh6iUnaBvHUm4WwJ8LiepBklSMzjNzrXBc/v2rIT
	n7xP6HBigQBnHTsaqj6EqOQG+Lg0Tr0LBcMqRYi1C5D7wJVMUmWIEZCg=
X-Gm-Gg: ASbGncstb4VMd1t+I5jc/OyYqLzzv6xIkERdCEJA2uDazvS7t64imQqXvzblOKzg1EJ
	crvivniTVizRZuS9an4Ft2J7CTULqSVUkwfeaWxpa9yv+Wbuifhcflod2pmJYlL0wHN16pJqh6G
	j7xuW+rmaMSJSKVe5xiOCeJCU21/ZhvZDf0f+3av2DEB7ZuMHEDwH3Cxe8v1UudAq0sqq/O6tPb
	BA=
X-Google-Smtp-Source: AGHT+IHwTNdaWy6rkBHfYJH7sMfil8cta1jDesOF8UOHwjNq4iuZ17R3J6hY+F8utoYaE/ZX32ILeOFYWmQPjkx7IrQ=
X-Received: by 2002:a17:907:97c3:b0:ad5:bf7:b801 with SMTP id
 a640c23a62f3a-ad536bca51amr1641453266b.19.1747812163250; Wed, 21 May 2025
 00:22:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK6rYFpX8dJErUdGkqn3e56eifN3COXmmqmvvStu5A9AHA@mail.gmail.com>
In-Reply-To: <CAEXYVK6rYFpX8dJErUdGkqn3e56eifN3COXmmqmvvStu5A9AHA@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 21 May 2025 09:22:31 +0200
X-Gm-Features: AX0GCFvwNBJBEUQ7EfMlQCx_xi1jXu4PQ9UTAgfdHc6-1kbvYwbeXh51L1rGzN0
Message-ID: <CAFOi1A6=_+6Ej3wzk55ezeyK1EEFEWrBaJN7=guEmTD9AD1Pfg@mail.gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: 3I7IL5QFEN7UDS7NIDR7TOCTKHUGDGYC
X-Message-ID-Hash: 3I7IL5QFEN7UDS7NIDR7TOCTKHUGDGYC
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Remote Streaming from Both X440 QSFP+ Ports
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3I7IL5QFEN7UDS7NIDR7TOCTKHUGDGYC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4421698397731137578=="

--===============4421698397731137578==
Content-Type: multipart/alternative; boundary="0000000000002000660635a03b51"

--0000000000002000660635a03b51
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 16, 2025 at 10:18=E2=80=AFPM Brian Padalino <bpadalino@gmail.co=
m> wrote:

> On the X440, I'd like my block to be able to output to both QSFP+ ports. =
I
> will be setting this up using remote streaming and I am wondering the
> appropriate way to set up my block to be able to output to both ports. Fr=
om
> the little blurb on remote streaming here:
>
>   https://files.ettus.com/manual/page_stream.html#stream_remote
>
> I see that I can supply:
>
>   - dest_addr, dest_port, dest_mac_addr, adapter
>
> The example uses the MultiUSRP object but I am using straight RFNoC. I
> assume I need to do this for every stream that I might create, so for the=
 N
> ports that are on my block, I need N RX streams that define those values,
> right?
>

Yes, exactly.


> If I had 4 ports, and I wanted to split 2 ports on sfp0 and 2 on sfp1, I'=
d
> create the stream for all 4 then issue the stream command to each one and=
 I
> should see the packets flow?
>

That's right.

--M

--0000000000002000660635a03b51
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 16,=
 2025 at 10:18=E2=80=AFPM Brian Padalino &lt;<a href=3D"mailto:bpadalino@gm=
ail.com">bpadalino@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr">On the X440, I&#39;d like my b=
lock to be able to output to both QSFP+ ports. I will be setting this up us=
ing remote streaming and I am wondering the appropriate way to set up my bl=
ock to be able to output to both ports. From the little blurb on remote str=
eaming here:<div><br></div><div>=C2=A0=C2=A0<a href=3D"https://files.ettus.=
com/manual/page_stream.html#stream_remote" target=3D"_blank">https://files.=
ettus.com/manual/page_stream.html#stream_remote</a></div><div><br></div><di=
v>I see that I can supply:</div><div><br></div><div>=C2=A0 - dest_addr, des=
t_port, dest_mac_addr, adapter</div><div><br></div><div>The example uses th=
e MultiUSRP object but I am using straight RFNoC. I assume I need to do thi=
s for every stream that I might create, so for the N ports that are on my b=
lock, I need N RX=C2=A0streams that define those values, right?</div></div>=
</blockquote><div><br></div><div>Yes, exactly.</div><div>=C2=A0<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>If I =
had 4 ports, and I wanted to split 2 ports on sfp0 and 2 on sfp1, I&#39;d c=
reate the stream for all 4 then issue the stream command to each one and I =
should see the packets flow?</div></div></blockquote><div><br></div>That&#3=
9;s right.</div><div class=3D"gmail_quote gmail_quote_container"><br></div>=
<div class=3D"gmail_quote gmail_quote_container">--M</div></div>

--0000000000002000660635a03b51--

--===============4421698397731137578==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4421698397731137578==--
