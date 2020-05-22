Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1BA1DE290
	for <lists+usrp-users@lfdr.de>; Fri, 22 May 2020 11:06:38 +0200 (CEST)
Received: from [::1] (port=60206 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jc3dR-0003k0-Pc; Fri, 22 May 2020 05:06:33 -0400
Received: from mail-io1-f53.google.com ([209.85.166.53]:44176)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <carlosruiznaranjo@gmail.com>)
 id 1jc3dN-0003g2-J9
 for usrp-users@lists.ettus.com; Fri, 22 May 2020 05:06:29 -0400
Received: by mail-io1-f53.google.com with SMTP id f4so10562242iov.11
 for <usrp-users@lists.ettus.com>; Fri, 22 May 2020 02:06:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YHVtJG1FIZJK6joJEP9Tnafy8CWj5zZp7cL5IHUD2fA=;
 b=aDB+bAmbd5Wkt9NAhqYcdhyMqFMGW665KDfO+flMXJI+/hh038/m6dhiSZNsdlPF/P
 WmonG22WuDoG1XDDNnDokC+d2jfKgc7tc8OTHrP6SLKvI9pQK2TSWF54My4f/Qb8/Rsz
 duoAnLaaawR+2jOktqqMjJDx8HmEn+nv6IE2nSla8cKSsIPDEwzKHeJz/cp1LpWeQ1YO
 cJ7PMrpHKKtNKiQ3Vm3/0qIqUs6lE8hBn359OZShgDQYk1yx4joqYypXX0igWpvDZait
 w+sLKrXmNM9HsftCICMTlPtOWWqtGjRcNEunvsLsV3FgQaIZnhSvKc+ZJzDgdqoQiVo2
 +0zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YHVtJG1FIZJK6joJEP9Tnafy8CWj5zZp7cL5IHUD2fA=;
 b=ne3t5T4N0tMA8CEuwrq0xSLSY/zrPkdEoibAR2ab60DCDCqHgCtRh2U/smbprOJwAP
 lUEekaT1uJmcQ1t1AZVwwoyAJnlwrlsK4iAn6h//ezOn4aNbQuwChEdlTzqA7VBX3Xcd
 7NvqMqUImAQQVpNnxCZ0muxjncRdbFmOEubu5nvZh62FaYTujBvi+BALzOlnIHOW9FXj
 pbeT86k5aHSLOoQOqMNgx+E/N2YDGn1OOshyGpvcTg9OZGOWR3O5657WCUJCUM0VoslU
 sdPRVNuzKSbaGp58Ym1bEGg/7K4PI+L/CGc72rXX1OFYJVHfcBKO4XEKTBC2jb5d1im8
 561A==
X-Gm-Message-State: AOAM533x0n9tnEPHfEkbimBdFoReEcDjUkyvkg3zpfghRxPtlBmkxnIF
 I2/GbJopFO9qozj+wbjS34ywbZmXzBs7NOOGO5k=
X-Google-Smtp-Source: ABdhPJwwpv7zXCTkpiTvmCNytlhJ7mt+gqCuYePV2Lkl9c6hJKnZQ3IjzblLFh2PSc6sG2RW4bnMoatyuK/gWPFGW6c=
X-Received: by 2002:a05:6602:248a:: with SMTP id
 g10mr683583ioe.81.1590138348675; 
 Fri, 22 May 2020 02:05:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAP2eGPhuOxNCAMULg=PFJBoGTP+2zAtd0YSMdGP-zH6Jse_D5w@mail.gmail.com>
 <CAEXYVK6W5UNvNUFuGaMU0iEWBkpPH8njt-FFkUdGLmqcwkER1g@mail.gmail.com>
 <CAP2eGPjoT8ocBao=jW_Z=JRb6OLhx1cC_-J7nRANXCvwNNU7rA@mail.gmail.com>
 <CAEXYVK5wDuzhrWdOyN5JtnU26L6-PnhLE6dtr+vDdkQR+R8auw@mail.gmail.com>
 <CAB__hTRVwf4bPYt8ZykUckC3=guxekGCj0jKa7Bpjqg2h3_CNw@mail.gmail.com>
 <CAP2eGPiKQXxqtX2Xw=j+nzmm263np-V-VmhL-9vW-fWYnA1scQ@mail.gmail.com>
 <CAB__hTR_ABbzm6472yEjw6zPrgxG5NLBjoktOP__L4VZZQ0Biw@mail.gmail.com>
In-Reply-To: <CAB__hTR_ABbzm6472yEjw6zPrgxG5NLBjoktOP__L4VZZQ0Biw@mail.gmail.com>
Date: Fri, 22 May 2020 11:05:37 +0200
Message-ID: <CAP2eGPjut=wbxuA87hKW2zoU8o5-9uHTW56PyAKn1OBZBkNo2g@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
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
From: Carlos Alberto Ruiz Naranjo via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Carlos Alberto Ruiz Naranjo <carlosruiznaranjo@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8031811536486559744=="
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

--===============8031811536486559744==
Content-Type: multipart/alternative; boundary="0000000000006aa55905a638efec"

--0000000000006aa55905a638efec
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Then I will try with 4 ports in DmaFIFO.
Later maybe I will need to add more ports, does anyone have any ideas? 2
DmaFIFO, big FIFO_LOOPBACK? The throughput is about 11MSamples. I would
like to know the complex about that, because maybe it doesn't be possible
for my project.

El jue., 21 may. 2020 a las 22:24, Rob Kossler (<rkossler@nd.edu>) escribi=
=C3=B3:

> ok.  I'm not sure if there is an upper limit, but I believe you should be
> able to have 4 ports because there are 4 ports in the DmaFIFO on the N310=
.
>
> On Thu, May 21, 2020 at 4:21 PM Carlos Alberto Ruiz Naranjo <
> carlosruiznaranjo@gmail.com> wrote:
>
>> Hi Rob,
>>
>> I'm using UHD-3.15.LTS and I have developed a custom DUC with N inputs
>> and 1 output. I have done the same with the DDC (1:N) and it works fine.
>> But with the DUC I have the problem with the DMA_FIFO, I need one DMA_FI=
FO
>> channel per DUC channel. I have thought about some solutions and I would
>> like to know which would be the best or if they are possible before I
>> started developing:
>>
>> - Increase the DMA_FIFO ports: from 2 to 4.
>> - Add another DMA_FIFO.
>> - Use FIFO_LOOPBACK with large size.
>>
>> My graph is:  DMA_FIFO(N:N) -> (N:1) DUC -> (1) Radio
>>
>> Thank you :)
>>
>>
>>
>>
>> El jue., 21 may. 2020 a las 21:13, Rob Kossler (<rkossler@nd.edu>)
>> escribi=C3=B3:
>>
>>> Hi Carlos,
>>> I don't quite understand.  Which version of UHD are you using?  For the
>>> UHD 3.15 and earlier, I thought that the typical configuration was inde=
ed
>>> host->DmaFIFO->DUC->Radio as you were hoping for.  For the current mast=
er,
>>> I noticed that the DmaFIFO is not included in the statically routed FPG=
A
>>> image.  But, aside from the master branch, the DmaFIFO should have 2 po=
rts
>>> such that you can connect to two DUC blocks.
>>> Rob
>>>
>>> On Thu, May 21, 2020 at 2:34 PM Brian Padalino via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> On Thu, May 21, 2020 at 2:25 PM Carlos Alberto Ruiz Naranjo <
>>>> carlosruiznaranjo@gmail.com> wrote:
>>>>
>>>>> Thank you for the response Brian :)
>>>>>
>>>>> The throughput is about 11MSamples.
>>>>> What about to use the AXI_FIFO_LOOPBACK?
>>>>>
>>>>
>>>> No idea about that.  Someone else will have to weigh in.
>>>>
>>>> Good luck!
>>>>
>>>> Brian
>>>>
>>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>

--0000000000006aa55905a638efec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Then I will try with 4 ports in DmaFIFO. <br></div><d=
iv>Later maybe I will need to add more ports, does anyone have any ideas? 2=
 DmaFIFO, big FIFO_LOOPBACK? The throughput is about 11MSamples. I would li=
ke to know the complex about that, because maybe it doesn&#39;t be possible=
 for my project.<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">El jue., 21 may. 2020 a las 22:24, Rob Kossler (&=
lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt;) escribi=C3=
=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr">ok.=C2=A0 I&#39;m not sure if there is an upper limit, but I believe =
you should be able to have 4 ports because there are 4 ports in the DmaFIFO=
 on the N310.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Thu, May 21, 2020 at 4:21 PM Carlos Alberto Ruiz Naranjo &l=
t;<a href=3D"mailto:carlosruiznaranjo@gmail.com" target=3D"_blank">carlosru=
iznaranjo@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr"><div>Hi Rob,</div><div><br></div><div>I=
&#39;m using UHD-3.15.LTS and I have developed a custom DUC with N inputs a=
nd 1 output. I have done the same with the DDC (1:N) and it works fine. But=
 with the DUC I have the problem with the DMA_FIFO, I need one DMA_FIFO cha=
nnel per DUC channel. <span lang=3D"en"><span title=3D"">I have thought abo=
ut some solutions and I would like to know which would be the best or if th=
ey are possible before I started developing:</span></span></div><div><span =
lang=3D"en"><span title=3D""><br></span></span></div><div><span lang=3D"en"=
><span title=3D"">- Increase the DMA_FIFO ports: from 2 to 4.</span></span>=
</div><div><span lang=3D"en"><span title=3D"">- <span lang=3D"en"><span tit=
le=3D"">Add another DMA_FIFO.</span></span></span></span></div><div><span l=
ang=3D"en"><span title=3D""><span lang=3D"en"><span title=3D"">- Use FIFO_L=
OOPBACK with large size.</span></span></span></span></div><div><span lang=
=3D"en"><span title=3D""><span lang=3D"en"><span title=3D""><br></span></sp=
an></span></span></div><div><span lang=3D"en"><span title=3D""><span lang=
=3D"en"><span title=3D"">My graph is:=C2=A0 DMA_FIFO(N:N) -&gt; (N:1) DUC -=
&gt; (1) Radio<br></span></span></span></span></div><div><span lang=3D"en">=
<span title=3D""><span lang=3D"en"><span title=3D""><br></span></span></spa=
n></span></div><div><span lang=3D"en"><span title=3D""><span lang=3D"en"><s=
pan title=3D"">Thank you :)<br></span></span></span></span></div><div><span=
 lang=3D"en"><span title=3D""><span lang=3D"en"><span title=3D""><br></span=
></span></span></span></div><div><span lang=3D"en"><span title=3D""><span l=
ang=3D"en"><span title=3D""><br></span></span></span></span></div><div><spa=
n lang=3D"en"><span title=3D""><br></span></span></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El jue., 21 may. 202=
0 a las 21:13, Rob Kossler (&lt;<a href=3D"mailto:rkossler@nd.edu" target=
=3D"_blank">rkossler@nd.edu</a>&gt;) escribi=C3=B3:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Ca=
rlos,<div>I don&#39;t quite understand.=C2=A0 Which version of UHD are you =
using?=C2=A0 For the UHD 3.15 and earlier, I thought that the typical confi=
guration was indeed host-&gt;DmaFIFO-&gt;DUC-&gt;Radio as you were hoping f=
or.=C2=A0 For the current master, I noticed that the DmaFIFO is not include=
d in the statically routed FPGA image.=C2=A0 But, aside from the master bra=
nch, the DmaFIFO should have 2 ports such that you can connect to two DUC b=
locks.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Thu, May 21, 2020 at 2:34 PM Brian Padalino vi=
a USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_b=
lank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Thu, =
May 21, 2020 at 2:25 PM Carlos Alberto Ruiz Naranjo &lt;<a href=3D"mailto:c=
arlosruiznaranjo@gmail.com" target=3D"_blank">carlosruiznaranjo@gmail.com</=
a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr"><div>Thank you for the response B=
rian :)<br></div><div><br></div><div>The throughput is about 11MSamples.</d=
iv><div>What about to use the <span lang=3D"en"><span title=3D""><span lang=
=3D"en"><span title=3D"">AXI_FIFO_LOOPBACK?</span></span></span></span></di=
v></div></blockquote><div><br></div><div>No idea about that.=C2=A0 Someone =
else will have to weigh in.</div><div><br></div><div>Good luck!</div><div><=
br></div><div>Brian</div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">
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
</blockquote></div>

--0000000000006aa55905a638efec--


--===============8031811536486559744==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8031811536486559744==--

