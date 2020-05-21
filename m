Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C7BBF1DD838
	for <lists+usrp-users@lfdr.de>; Thu, 21 May 2020 22:25:16 +0200 (CEST)
Received: from [::1] (port=42718 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jbrkh-0001pi-T9; Thu, 21 May 2020 16:25:15 -0400
Received: from mail-ot1-f43.google.com ([209.85.210.43]:33545)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jbrke-0001ew-Dh
 for usrp-users@lists.ettus.com; Thu, 21 May 2020 16:25:12 -0400
Received: by mail-ot1-f43.google.com with SMTP id v17so6605124ote.0
 for <usrp-users@lists.ettus.com>; Thu, 21 May 2020 13:24:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4eK7vbmhSL6pVqIjO+g6gURhSXQIL9HVFjMu9cVq4/g=;
 b=MxlHtDwn1vf7+kaTWw5dQE4dWJDf2T7gunDEQGjYKOuXWw79ABFrmfsDD0EsTx1y82
 ieFqiaB/VkBjDFJ+V+4xjY78hroKOK9hUHGjrq919POvnDVIXOo+08EFFCq7gGah0Dy6
 NKHdlcY7WDT3dv1cbxpnWc5PCKouUvwHQSH1/t84B54JZ5GxB8Or0GOhYqkV9Zrl63yw
 dwXG8gjEzDspcZVvtbpzWgNnKJROMyu4EA5X4p7M6ymDYKr3TfHQXbzYS4777WsJmxN9
 tsEJvt2Nah+AyLOeuVTlrg6/he1VJXf33ElgOb6/PRZzwV0zjXfd0zQMNhHPRlTUs/f/
 Vi2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4eK7vbmhSL6pVqIjO+g6gURhSXQIL9HVFjMu9cVq4/g=;
 b=o5Ia9+UmKo+QOQxJHXBk+gVp4RYGiX4YGdTtdFYiLmH5EkuA/0bYJ50ujswJDhujcg
 IOU3ZS2Olon/rxjp/qpIjNG8/6kcjvVOHpGIOVq5blRZWOt/1kfRIwZFalqdNVWopni2
 wXx+fPBQwCsps/uvjJCb2kqJRyuAi+ivdOVS4074E9bjRNqK38QwZWwsgZR5dpO4kM6d
 cybn1tebV3CnI+zy4SaB4wqCjEy6Wh1nGHdE5jL+DjTYBBjPVkW2n0GNP+vget9Zm8i+
 8C4GgWDrzLUAx8XauDOwAQ96yQaP/WYeH5UVTAhpSR6zdbDYjZRRTOva4UDVGTR+8cjW
 +WMg==
X-Gm-Message-State: AOAM53243u7rwk2fFTV/c2fMswkDQ/NJCaTPgshp/alsitQe1Y1TTyQo
 X+yeEIInPtMKGU9RmibA6Gd8FCZII6675LUZGgu4kA==
X-Google-Smtp-Source: ABdhPJxNiryKPEx1Y6uVHkvgQoEzOvK2qLlTkcWdvt6BMAZsjC9Ni+OninX+4CsGb81HNLJM5kwHv7iw222bwKQG9xQ=
X-Received: by 2002:a9d:6196:: with SMTP id g22mr8418220otk.58.1590092671590; 
 Thu, 21 May 2020 13:24:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAP2eGPhuOxNCAMULg=PFJBoGTP+2zAtd0YSMdGP-zH6Jse_D5w@mail.gmail.com>
 <CAEXYVK6W5UNvNUFuGaMU0iEWBkpPH8njt-FFkUdGLmqcwkER1g@mail.gmail.com>
 <CAP2eGPjoT8ocBao=jW_Z=JRb6OLhx1cC_-J7nRANXCvwNNU7rA@mail.gmail.com>
 <CAEXYVK5wDuzhrWdOyN5JtnU26L6-PnhLE6dtr+vDdkQR+R8auw@mail.gmail.com>
 <CAB__hTRVwf4bPYt8ZykUckC3=guxekGCj0jKa7Bpjqg2h3_CNw@mail.gmail.com>
 <CAP2eGPiKQXxqtX2Xw=j+nzmm263np-V-VmhL-9vW-fWYnA1scQ@mail.gmail.com>
In-Reply-To: <CAP2eGPiKQXxqtX2Xw=j+nzmm263np-V-VmhL-9vW-fWYnA1scQ@mail.gmail.com>
Date: Thu, 21 May 2020 16:24:20 -0400
Message-ID: <CAB__hTR_ABbzm6472yEjw6zPrgxG5NLBjoktOP__L4VZZQ0Biw@mail.gmail.com>
To: Carlos Alberto Ruiz Naranjo <carlosruiznaranjo@gmail.com>
Subject: Re: [USRP-users] Multiple DMA_FIFO blocks
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8846775256543688171=="
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

--===============8846775256543688171==
Content-Type: multipart/alternative; boundary="000000000000d9ddad05a62e4c54"

--000000000000d9ddad05a62e4c54
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

ok.  I'm not sure if there is an upper limit, but I believe you should be
able to have 4 ports because there are 4 ports in the DmaFIFO on the N310.

On Thu, May 21, 2020 at 4:21 PM Carlos Alberto Ruiz Naranjo <
carlosruiznaranjo@gmail.com> wrote:

> Hi Rob,
>
> I'm using UHD-3.15.LTS and I have developed a custom DUC with N inputs an=
d
> 1 output. I have done the same with the DDC (1:N) and it works fine. But
> with the DUC I have the problem with the DMA_FIFO, I need one DMA_FIFO
> channel per DUC channel. I have thought about some solutions and I would
> like to know which would be the best or if they are possible before I
> started developing:
>
> - Increase the DMA_FIFO ports: from 2 to 4.
> - Add another DMA_FIFO.
> - Use FIFO_LOOPBACK with large size.
>
> My graph is:  DMA_FIFO(N:N) -> (N:1) DUC -> (1) Radio
>
> Thank you :)
>
>
>
>
> El jue., 21 may. 2020 a las 21:13, Rob Kossler (<rkossler@nd.edu>)
> escribi=C3=B3:
>
>> Hi Carlos,
>> I don't quite understand.  Which version of UHD are you using?  For the
>> UHD 3.15 and earlier, I thought that the typical configuration was indee=
d
>> host->DmaFIFO->DUC->Radio as you were hoping for.  For the current maste=
r,
>> I noticed that the DmaFIFO is not included in the statically routed FPGA
>> image.  But, aside from the master branch, the DmaFIFO should have 2 por=
ts
>> such that you can connect to two DUC blocks.
>> Rob
>>
>> On Thu, May 21, 2020 at 2:34 PM Brian Padalino via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> On Thu, May 21, 2020 at 2:25 PM Carlos Alberto Ruiz Naranjo <
>>> carlosruiznaranjo@gmail.com> wrote:
>>>
>>>> Thank you for the response Brian :)
>>>>
>>>> The throughput is about 11MSamples.
>>>> What about to use the AXI_FIFO_LOOPBACK?
>>>>
>>>
>>> No idea about that.  Someone else will have to weigh in.
>>>
>>> Good luck!
>>>
>>> Brian
>>>
>>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--000000000000d9ddad05a62e4c54
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">ok.=C2=A0 I&#39;m not sure if there is an upper limit, but=
 I believe you should be able to have 4 ports because there are 4 ports in =
the DmaFIFO on the N310.</div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Thu, May 21, 2020 at 4:21 PM Carlos Alberto Ruiz=
 Naranjo &lt;<a href=3D"mailto:carlosruiznaranjo@gmail.com" target=3D"_blan=
k">carlosruiznaranjo@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Rob,</div><div><br><=
/div><div>I&#39;m using UHD-3.15.LTS and I have developed a custom DUC with=
 N inputs and 1 output. I have done the same with the DDC (1:N) and it work=
s fine. But with the DUC I have the problem with the DMA_FIFO, I need one D=
MA_FIFO channel per DUC channel. <span lang=3D"en"><span title=3D"">I have =
thought about some solutions and I would like to know which would be the be=
st or if they are possible before I started developing:</span></span></div>=
<div><span lang=3D"en"><span title=3D""><br></span></span></div><div><span =
lang=3D"en"><span title=3D"">- Increase the DMA_FIFO ports: from 2 to 4.</s=
pan></span></div><div><span lang=3D"en"><span title=3D"">- <span lang=3D"en=
"><span title=3D"">Add another DMA_FIFO.</span></span></span></span></div><=
div><span lang=3D"en"><span title=3D""><span lang=3D"en"><span title=3D"">-=
 Use FIFO_LOOPBACK with large size.</span></span></span></span></div><div><=
span lang=3D"en"><span title=3D""><span lang=3D"en"><span title=3D""><br></=
span></span></span></span></div><div><span lang=3D"en"><span title=3D""><sp=
an lang=3D"en"><span title=3D"">My graph is:=C2=A0 DMA_FIFO(N:N) -&gt; (N:1=
) DUC -&gt; (1) Radio<br></span></span></span></span></div><div><span lang=
=3D"en"><span title=3D""><span lang=3D"en"><span title=3D""><br></span></sp=
an></span></span></div><div><span lang=3D"en"><span title=3D""><span lang=
=3D"en"><span title=3D"">Thank you :)<br></span></span></span></span></div>=
<div><span lang=3D"en"><span title=3D""><span lang=3D"en"><span title=3D"">=
<br></span></span></span></span></div><div><span lang=3D"en"><span title=3D=
""><span lang=3D"en"><span title=3D""><br></span></span></span></span></div=
><div><span lang=3D"en"><span title=3D""><br></span></span></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El jue., 2=
1 may. 2020 a las 21:13, Rob Kossler (&lt;<a href=3D"mailto:rkossler@nd.edu=
" target=3D"_blank">rkossler@nd.edu</a>&gt;) escribi=C3=B3:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"lt=
r">Hi Carlos,<div>I don&#39;t quite understand.=C2=A0 Which version of UHD =
are you using?=C2=A0 For the UHD 3.15 and earlier, I thought that the typic=
al configuration was indeed host-&gt;DmaFIFO-&gt;DUC-&gt;Radio as you were =
hoping for.=C2=A0 For the current master, I noticed that the DmaFIFO is not=
 included in the statically routed FPGA image.=C2=A0 But, aside from the ma=
ster branch, the DmaFIFO should have 2 ports such that you can connect to t=
wo DUC blocks.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Thu, May 21, 2020 at 2:34 PM Brian Pad=
alino via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targ=
et=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">O=
n Thu, May 21, 2020 at 2:25 PM Carlos Alberto Ruiz Naranjo &lt;<a href=3D"m=
ailto:carlosruiznaranjo@gmail.com" target=3D"_blank">carlosruiznaranjo@gmai=
l.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Thank you for the re=
sponse Brian :)<br></div><div><br></div><div>The throughput is about 11MSam=
ples.</div><div>What about to use the <span lang=3D"en"><span title=3D""><s=
pan lang=3D"en"><span title=3D"">AXI_FIFO_LOOPBACK?</span></span></span></s=
pan></div></div></blockquote><div><br></div><div>No idea about that.=C2=A0 =
Someone else will have to weigh in.</div><div><br></div><div>Good luck!</di=
v><div><br></div><div>Brian</div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
</blockquote></div>
</blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>

--000000000000d9ddad05a62e4c54--


--===============8846775256543688171==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8846775256543688171==--

