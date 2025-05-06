Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C645AABC37
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 09:58:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 70691386601
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 03:58:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746518315; bh=x05ZDprpVwVGx+9CaX40jINr5hr6C92EfpBWSFpKVtE=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=FoAHba9Xzn+1XRQ+DXJVNp+rqK9N2efLFMZLoCW8CiQqjVXq92bGkevkeIraQfaMo
	 qrmq7/pBuN7kyW5ONztOd09m66QLq2cb4mpt6YZRmiU+8tWgxsj99/OsPJnJ14MghK
	 bsSJ+4zqSOloiUI42a0sdKxl3GD5gsfrJn3V4x4FTWjipgaZNlKwOowKNqrTnZVc1u
	 47DYAlBfTc63QaBzupPO644s/ig4FRwmDwuTEmvosF7Gzx6zlcSnC8QH1esVaeOwdo
	 3iR/TTrDOkXPNb5TPNvwKKCEQMUTI3GuPw/Qltkf6t3heUL/+hoCYaWhNs+mO31iiV
	 BH8MN6kI/kTzw==
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 1924A386306
	for <usrp-users@lists.ettus.com>; Tue,  6 May 2025 03:58:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="IWuR3MtH";
	dkim-atps=neutral
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5e8be1bdb7bso8056104a12.0
        for <usrp-users@lists.ettus.com>; Tue, 06 May 2025 00:58:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1746518306; x=1747123106; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KYDZmOAHLZlHjtz9BAQCC6YBtkpsLbnzkJf/6lx6DnA=;
        b=IWuR3MtH89UztgVWcoHlnByUA6fIAkKa8O/nCayJC3GpXvTa45Q17lsw08oeKKJwC+
         vxfTPr/CQtDg0NuhNUIefNy+xz2GfTML1dQvfGGC3Bc7I1fPNgPTokk/JaM0+XWhgajQ
         6U0Fy5CxJ0BfsCrO/VCtfQWHOM7Ee52X/RNedWZ7OJUg12rEZnpKJXJgpSq2hBTIRV9M
         ARC726//b+qzi0xXX75Ik4HB3ME2m5JoetWVv+rDSKZxWZX7JQePtNZIl9KxMPOdZ/j5
         Fierth8takbHoQvBE+iJVZeJw+pHP2fbfKwfCQFhKGOGwXr4ZJrwF0R2rU41lcbNkKvP
         uGTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746518306; x=1747123106;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KYDZmOAHLZlHjtz9BAQCC6YBtkpsLbnzkJf/6lx6DnA=;
        b=kaCXXQ2glvBxTm6FntVxDRGhF89ofoW9cX8v0Eb5aFZLF7Y30rZYY6v+KGEJcnKkU7
         ben2ffWA3bNFAobLEi7XLPhEwLlPzo31KR37OZt9Qe9jAKUHm+Bio6yyF/uhTUT/5KoA
         ZY4AcZ+48KCTdknWS63x4AXW6mWlVwfZ9FuGDoaKznh6ZtUfImLMK2nqICqeqlag1mCS
         4SOBVSaBqrtFl3iQlJrNYmn3zej7ZybGiCwQ4TverRAMv2Vz/RbJOjvDAsCAtct5CsuJ
         9ShbOQua+HCCq6P2XnUw+kzXzBGzF3X+yfwR1ZP93u3fUGWsG388ozgBoh/tBcDXqwgd
         974w==
X-Gm-Message-State: AOJu0Yx8BDC9WrYMVfjIxuF2OMnwkzVPLn75i/bdBFZ8LGOkL6XqVUpP
	EZG5JrDmHZW6MEFjhHLsdiOSAcpWodgMioQyr5skZwSKRPeDbfUUZbmEYMYdvYdYrJaHji8dejP
	n5mNZmsv8jWj5Y75ojtr1Mwg0vKlubrERezl+iFpEa3gPIgXJ1z4=
X-Gm-Gg: ASbGnctgFFMOWsb/P5gh+r49LulcpLIK2Qip1dTa/rE5eGMi5qOIq+UMmMPA54oCRfg
	X5H/zhsgH5mT+T6+1kgsUBnBFRIRCQfS2Brsl7/t7E+1BLqdX2RjUcPyv5Fu7yla9dyZXZ3X0ow
	1TfZFH/WazC+bNruPKWlCWXBW3uYwWN9X3wLsDSVz0JrkUwGH579mcrg==
X-Google-Smtp-Source: AGHT+IGO+RVrd8WqGXc+0TWnzLKGpbt+XOzKVbV06uwCDlcchM3Kb1SQXJo2ITm/WWYXZNZFe8UGrwEN4ID19YcUeZc=
X-Received: by 2002:a17:907:8b93:b0:ac7:150b:57b2 with SMTP id
 a640c23a62f3a-ad1d4692427mr190505366b.41.1746518306200; Tue, 06 May 2025
 00:58:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK4_EZt1CN7eic+zX89q_UM9xkLRrgDYOfQgAJa-vxgkEA@mail.gmail.com>
 <CAFche=hXaVLyqJA7Ay7k8NqnVaKyWni1h7JwapVwue2iwAM5MA@mail.gmail.com>
 <CAEXYVK5W_kupokFpwQY+GpwEUO1nN4Y0cH6Bhj8z1HFMYP54uw@mail.gmail.com>
 <CAFche=iRsVwbop=mzORPq9HoOwFkMc-uBkaEYocerg9Es+QXrQ@mail.gmail.com>
 <CAEXYVK6S7adZNCzgVd124OyHJd8erXqUQZxNcODdn_WdQLiNZg@mail.gmail.com>
 <CAFche=iEJC+aFVHJwqJFFdC_WDM5hh7uXBEx8gVQ2hdzQRHc9A@mail.gmail.com>
 <CAEXYVK7rk9=61SOaofikn=K5C7UiWOvcYwdz_nA6ee9wbLi9Tg@mail.gmail.com> <CAFche=husQaF4B5FgLS7ibG9oSpQ5-M0GJvUE_=qEJPpqe7UXw@mail.gmail.com>
In-Reply-To: <CAFche=husQaF4B5FgLS7ibG9oSpQ5-M0GJvUE_=qEJPpqe7UXw@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 6 May 2025 09:58:14 +0200
X-Gm-Features: ATxdqUHIlD_I7akWQuOytEwk5aIHrjFOY_B_wIVoWcmBJfd396Ra_hRcwmPAMnU
Message-ID: <CAFOi1A4Ayhd4g2=CgbN2kHOxZ+Hnf4pigRTpcsRvNgb9J_3kYA@mail.gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: 5XNUIK37U4BI2WJMVJ3JJ2XLC3YFGXPY
X-Message-ID-Hash: 5XNUIK37U4BI2WJMVJ3JJ2XLC3YFGXPY
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC CHDR DstEPID and Virtual Channels Clarification
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5XNUIK37U4BI2WJMVJ3JJ2XLC3YFGXPY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1817765501368939236=="

--===============1817765501368939236==
Content-Type: multipart/alternative; boundary="0000000000003c2fbd063472fbb1"

--0000000000003c2fbd063472fbb1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

One thing to keep in mind: If you have many many virtual channels, then you
probably still have a lot of blocks. The control crossbar also increases
with N^2 in size, where N is the number of blocks (not the number of stream
endpoints, which affects the size of the CHDR crossbar).

Maybe what you're trying to do is better handled at the application level.
Meaning that you have bigger blocks that do some kind of channelization
internally, and then pull apart the stream in your application. After all,
there are very few rules on what kind of data you can stream to the host
(or vice versa). For example, when we stream FFT data to the host, we don't
separate the bins into virtual channels, but we put the onus on the
application to understand that every vector of FFT-size needs to be
understood as such.

Not sure if this is helpful to you -- of course, for most cases, RFNoC
should be doing all the hard work for you. But in some cases, it might be
easier to do some of the work in your app.

--M

On Thu, May 1, 2025 at 4:42=E2=80=AFAM Wade Fife <wade.fife@ettus.com> wrot=
e:

> I don't think static routing will help in your case. Stream endpoints are
> only for communicating over dynamic routes and the EPID is used for that
> routing.
>
> Wade
>
>
> On Mon, Apr 28, 2025 at 9:37=E2=80=AFAM Brian Padalino <bpadalino@gmail.c=
om>
> wrote:
>
>> On Mon, Apr 28, 2025 at 10:33=E2=80=AFAM Wade Fife <wade.fife@ettus.com>=
 wrote:
>>
>>> In practice, you can't have a large number of stream endpoints in a
>>> single USRP, because the crossbar and associated logic adds up. Somethi=
ng
>>> on the order of 16 or so might be a practical limit, depending a lot on
>>> what's on those endpoints. If you need to distinguish between more data
>>> streams, then you'd want to use something like virtual channels or
>>> prepending your data with some kind of identifier.
>>>
>>
>> Thanks for this answer.
>>
>> Does static routing help with this or not particularly?
>>
>> I have only a single configuration I ever want to run, and it's endpoint=
s
>> directly into a modified radio block - no other blocks.
>>
>> Thanks,
>> Brian
>>
>>> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000003c2fbd063472fbb1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>One thing to keep in mind: If you have many many virt=
ual channels, then you probably still have a lot of blocks. The control cro=
ssbar also increases with N^2 in size, where N is the number of blocks (not=
 the number of stream endpoints, which affects the size of the CHDR crossba=
r).</div><div><br></div><div>Maybe what you&#39;re trying to do is better h=
andled at the application level. Meaning that you have bigger blocks that d=
o some kind of channelization internally, and then pull apart the stream in=
 your application. After all, there are very few rules on what kind of data=
 you can stream to the host (or vice versa). For example, when we stream FF=
T data to the host, we don&#39;t separate the bins into virtual channels, b=
ut we put the onus on the application to understand that every vector of FF=
T-size needs to be understood as such.</div><div><br></div><div>Not sure if=
 this is helpful to you -- of course, for most cases, RFNoC should be doing=
 all the hard work for you. But in some cases, it might be easier to do som=
e of the work in your app.</div><div><br></div><div>--M</div></div><br><div=
 class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Thu, May 1, 2025 at 4:42=E2=80=AFAM Wade Fife &lt;<a href=3D"mai=
lto:wade.fife@ettus.com">wade.fife@ettus.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>I don&#39=
;t think static routing will help in your case. Stream endpoints are only f=
or communicating over dynamic routes and the EPID is used for that routing.=
 <br></div><div><br></div><div>Wade</div><br></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 28, 2025 at 9:37=
=E2=80=AFAM Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com" targe=
t=3D"_blank">bpadalino@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Mon, =
Apr 28, 2025 at 10:33=E2=80=AFAM Wade Fife &lt;<a href=3D"mailto:wade.fife@=
ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:</div><div c=
lass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr"><div>In practice, you can&#39;t have a large number of stream =
endpoints in a single USRP, because the crossbar and associated logic adds =
up. Something on the order of 16 or so might be a practical limit, dependin=
g a lot on what&#39;s on those endpoints. If you need to distinguish betwee=
n more data streams, then you&#39;d want to use something like virtual chan=
nels or prepending your data with some kind of identifier.</div></div></blo=
ckquote><div><br></div><div>Thanks for this answer.</div><div><br></div><di=
v>Does static routing help with=C2=A0this or not particularly?</div><div><b=
r></div><div>I have only a single configuration I ever want to run, and it&=
#39;s endpoints directly into a modified radio block - no other blocks.</di=
v><div><br></div><div>Thanks,<br>Brian</div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div class=3D"gmail_quote"><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div class=3D"gmail_quote"><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000003c2fbd063472fbb1--

--===============1817765501368939236==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1817765501368939236==--
