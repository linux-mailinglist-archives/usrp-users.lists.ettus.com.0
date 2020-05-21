Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E6E1DD82D
	for <lists+usrp-users@lfdr.de>; Thu, 21 May 2020 22:22:21 +0200 (CEST)
Received: from [::1] (port=40670 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jbrhq-0001RY-Ic; Thu, 21 May 2020 16:22:18 -0400
Received: from mail-il1-f172.google.com ([209.85.166.172]:34539)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <carlosruiznaranjo@gmail.com>)
 id 1jbrhn-0001ME-00
 for usrp-users@lists.ettus.com; Thu, 21 May 2020 16:22:15 -0400
Received: by mail-il1-f172.google.com with SMTP id 4so8573927ilg.1
 for <usrp-users@lists.ettus.com>; Thu, 21 May 2020 13:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bDdfZXbAcLcPd4bCHh8+fjse4N5/SN8ue/yRfZTq43E=;
 b=qyUTK95hmQ5tr2c4+wOylSnfk0RLNlJzTQQOBbmgxQbFaTY1BvFleVA9JJMmgDJPHx
 UXG+NZRRaBXpAeMcRMYFO8zwC31uk/+oOcYdvPSmGGyHaJZc2/FtKHMyeTrmS6iCmroM
 ss8dnbhaCs5w1duwz7SCL+pmqgX8MRf9MS4aSKGOrFRaK7L35jbWPQbFa2G6Xz1Pn9ew
 iU0/qnRzhMjmkWZd4s5q4jC7CK4RMIMR0Af99KZ56xSMZJnSoCJaSL8+eowzMbZqB6ry
 PEUwpILetKw0GmBRvLkFyMTKYRtmW9pOjZFamGgnIr+SNG9gjkR7zGT1BTj/t1sMROgF
 QyEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bDdfZXbAcLcPd4bCHh8+fjse4N5/SN8ue/yRfZTq43E=;
 b=foUVVFW6WD855hULntYqNZbWJMZratsU2sQwXTWSFhcVQ1z48liDrDNz/zDJfTTO91
 bkkmqmcy3ex8XdrAcwgw/OqgsOAv+ywE7l4PVCcbBbRVzTbuyhMv7vdQhsywKrAT37Pc
 esqcF5gmwQtLfGNQcID4UaS20cKOaDXw9LcH4oTMDC9leIoG2qNQ3DxWh7F8AMaqguiO
 fBwgIYfKAN85ohE8q8VGSAMNyq8sFOB+K+6n1mxWJMV3jemmqJTzg6sG2BaA8rIzw4UB
 x95T4luVNVbAjpMhLE8IZG7j/Q97zdtuMAauEBw3rjxSRijOLNkqed54Kk3qpDm7DQNM
 FQPA==
X-Gm-Message-State: AOAM531u4REWF4X5dFLWcDna89hyb0KAYvHgQC/g2z610sV97aCpq/wo
 f8PWf8kAbZZ1u+RK7bVxGsmGQECgvVRR7MYigE4=
X-Google-Smtp-Source: ABdhPJxXKnayq1FU+kB1ASlQUxm3lSL0Qi8E0csIwhmMTb9hVFnUUGwySO0XseLCCJJnedolX7DiIhdolaW3QvCWLWk=
X-Received: by 2002:a05:6e02:52e:: with SMTP id
 h14mr10577799ils.177.1590092494225; 
 Thu, 21 May 2020 13:21:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAP2eGPhuOxNCAMULg=PFJBoGTP+2zAtd0YSMdGP-zH6Jse_D5w@mail.gmail.com>
 <CAEXYVK6W5UNvNUFuGaMU0iEWBkpPH8njt-FFkUdGLmqcwkER1g@mail.gmail.com>
 <CAP2eGPjoT8ocBao=jW_Z=JRb6OLhx1cC_-J7nRANXCvwNNU7rA@mail.gmail.com>
 <CAEXYVK5wDuzhrWdOyN5JtnU26L6-PnhLE6dtr+vDdkQR+R8auw@mail.gmail.com>
 <CAB__hTRVwf4bPYt8ZykUckC3=guxekGCj0jKa7Bpjqg2h3_CNw@mail.gmail.com>
In-Reply-To: <CAB__hTRVwf4bPYt8ZykUckC3=guxekGCj0jKa7Bpjqg2h3_CNw@mail.gmail.com>
Date: Thu, 21 May 2020 22:21:22 +0200
Message-ID: <CAP2eGPiKQXxqtX2Xw=j+nzmm263np-V-VmhL-9vW-fWYnA1scQ@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============0769205021158166659=="
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

--===============0769205021158166659==
Content-Type: multipart/alternative; boundary="00000000000047453705a62e42d8"

--00000000000047453705a62e42d8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

I'm using UHD-3.15.LTS and I have developed a custom DUC with N inputs and
1 output. I have done the same with the DDC (1:N) and it works fine. But
with the DUC I have the problem with the DMA_FIFO, I need one DMA_FIFO
channel per DUC channel. I have thought about some solutions and I would
like to know which would be the best or if they are possible before I
started developing:

- Increase the DMA_FIFO ports: from 2 to 4.
- Add another DMA_FIFO.
- Use FIFO_LOOPBACK with large size.

My graph is:  DMA_FIFO(N:N) -> (N:1) DUC -> (1) Radio

Thank you :)




El jue., 21 may. 2020 a las 21:13, Rob Kossler (<rkossler@nd.edu>) escribi=
=C3=B3:

> Hi Carlos,
> I don't quite understand.  Which version of UHD are you using?  For the
> UHD 3.15 and earlier, I thought that the typical configuration was indeed
> host->DmaFIFO->DUC->Radio as you were hoping for.  For the current master=
,
> I noticed that the DmaFIFO is not included in the statically routed FPGA
> image.  But, aside from the master branch, the DmaFIFO should have 2 port=
s
> such that you can connect to two DUC blocks.
> Rob
>
> On Thu, May 21, 2020 at 2:34 PM Brian Padalino via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> On Thu, May 21, 2020 at 2:25 PM Carlos Alberto Ruiz Naranjo <
>> carlosruiznaranjo@gmail.com> wrote:
>>
>>> Thank you for the response Brian :)
>>>
>>> The throughput is about 11MSamples.
>>> What about to use the AXI_FIFO_LOOPBACK?
>>>
>>
>> No idea about that.  Someone else will have to weigh in.
>>
>> Good luck!
>>
>> Brian
>>
>>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--00000000000047453705a62e42d8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Rob,</div><div><br></div><div>I&#39;m using UHD-3.=
15.LTS and I have developed a custom DUC with N inputs and 1 output. I have=
 done the same with the DDC (1:N) and it works fine. But with the DUC I hav=
e the problem with the DMA_FIFO, I need one DMA_FIFO channel per DUC channe=
l. <span class=3D"gmail-tlid-translation gmail-translation" lang=3D"en"><sp=
an title=3D"" class=3D"gmail-">I have thought about some solutions and I wo=
uld like to know which would be the best or if they are possible before I s=
tarted developing:</span></span></div><div><span class=3D"gmail-tlid-transl=
ation gmail-translation" lang=3D"en"><span title=3D"" class=3D"gmail-"><br>=
</span></span></div><div><span class=3D"gmail-tlid-translation gmail-transl=
ation" lang=3D"en"><span title=3D"" class=3D"gmail-">- Increase the DMA_FIF=
O ports: from 2 to 4.</span></span></div><div><span class=3D"gmail-tlid-tra=
nslation gmail-translation" lang=3D"en"><span title=3D"" class=3D"gmail-">-=
 <span class=3D"gmail-tlid-translation gmail-translation" tabindex=3D"-1" l=
ang=3D"en"><span title=3D"">Add another DMA_FIFO.</span></span></span></spa=
n></div><div><span class=3D"gmail-tlid-translation gmail-translation" lang=
=3D"en"><span title=3D"" class=3D"gmail-"><span class=3D"gmail-tlid-transla=
tion gmail-translation" tabindex=3D"-1" lang=3D"en"><span title=3D"">- Use =
FIFO_LOOPBACK with large size.</span></span></span></span></div><div><span =
class=3D"gmail-tlid-translation gmail-translation" lang=3D"en"><span title=
=3D"" class=3D"gmail-"><span class=3D"gmail-tlid-translation gmail-translat=
ion" tabindex=3D"-1" lang=3D"en"><span title=3D""><br></span></span></span>=
</span></div><div><span class=3D"gmail-tlid-translation gmail-translation" =
lang=3D"en"><span title=3D"" class=3D"gmail-"><span class=3D"gmail-tlid-tra=
nslation gmail-translation" tabindex=3D"-1" lang=3D"en"><span title=3D"">My=
 graph is:=C2=A0 DMA_FIFO(N:N) -&gt; (N:1) DUC -&gt; (1) Radio<br></span></=
span></span></span></div><div><span class=3D"gmail-tlid-translation gmail-t=
ranslation" lang=3D"en"><span title=3D"" class=3D"gmail-"><span class=3D"gm=
ail-tlid-translation gmail-translation" tabindex=3D"-1" lang=3D"en"><span t=
itle=3D""><br></span></span></span></span></div><div><span class=3D"gmail-t=
lid-translation gmail-translation" lang=3D"en"><span title=3D"" class=3D"gm=
ail-"><span class=3D"gmail-tlid-translation gmail-translation" tabindex=3D"=
-1" lang=3D"en"><span title=3D"">Thank you :)<br></span></span></span></spa=
n></div><div><span class=3D"gmail-tlid-translation gmail-translation" lang=
=3D"en"><span title=3D"" class=3D"gmail-"><span class=3D"gmail-tlid-transla=
tion gmail-translation" tabindex=3D"-1" lang=3D"en"><span title=3D""><br></=
span></span></span></span></div><div><span class=3D"gmail-tlid-translation =
gmail-translation" lang=3D"en"><span title=3D"" class=3D"gmail-"><span clas=
s=3D"gmail-tlid-translation gmail-translation" tabindex=3D"-1" lang=3D"en">=
<span title=3D""><br></span></span></span></span></div><div><span class=3D"=
gmail-tlid-translation gmail-translation" lang=3D"en"><span title=3D"" clas=
s=3D"gmail-"><br></span></span></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">El jue., 21 may. 2020 a las 21:13, Rob=
 Kossler (&lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt;) e=
scribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr"><div dir=3D"ltr">Hi Carlos,<div>I don&#39;t quite understand=
.=C2=A0 Which version of UHD are you using?=C2=A0 For the UHD 3.15 and earl=
ier, I thought that the typical configuration was indeed host-&gt;DmaFIFO-&=
gt;DUC-&gt;Radio as you were hoping for.=C2=A0 For the current master, I no=
ticed that the DmaFIFO is not included in the statically routed FPGA image.=
=C2=A0 But, aside from the master branch, the DmaFIFO should have 2 ports s=
uch that you can connect to two DUC blocks.</div><div>Rob</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May =
21, 2020 at 2:34 PM Brian Padalino via USRP-users &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr"><div dir=3D"ltr">On Thu, May 21, 2020 at 2:25 PM Carlos Alberto =
Ruiz Naranjo &lt;<a href=3D"mailto:carlosruiznaranjo@gmail.com" target=3D"_=
blank">carlosruiznaranjo@gmail.com</a>&gt; wrote:<br></div><div class=3D"gm=
ail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r"><div>Thank you for the response Brian :)<br></div><div><br></div><div>Th=
e throughput is about 11MSamples.</div><div>What about to use the <span lan=
g=3D"en"><span title=3D""><span lang=3D"en"><span title=3D"">AXI_FIFO_LOOPB=
ACK?</span></span></span></span></div></div></blockquote><div><br></div><di=
v>No idea about that.=C2=A0 Someone else will have to weigh in.</div><div><=
br></div><div>Good luck!</div><div><br></div><div>Brian</div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div class=3D"gmail_quote"><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">
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

--00000000000047453705a62e42d8--


--===============0769205021158166659==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0769205021158166659==--

