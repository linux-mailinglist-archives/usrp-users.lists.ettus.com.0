Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B27322467F8
	for <lists+usrp-users@lfdr.de>; Mon, 17 Aug 2020 16:08:52 +0200 (CEST)
Received: from [::1] (port=36140 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k7foc-0000jq-81; Mon, 17 Aug 2020 10:08:46 -0400
Received: from mail-ot1-f51.google.com ([209.85.210.51]:39363)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1k7foZ-0000f3-9U
 for usrp-users@lists.ettus.com; Mon, 17 Aug 2020 10:08:43 -0400
Received: by mail-ot1-f51.google.com with SMTP id z18so13498817otk.6
 for <usrp-users@lists.ettus.com>; Mon, 17 Aug 2020 07:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Yz8pfnD3TTf3PKM1MTqwj4NVFUnjASbSt+JhUJhNkhA=;
 b=j6Zk7AOW1NO6HK2KfHA6606YWIpOs2ZA/gCTYIyxAKYt8SR84pCKjcQi6BtKJLx81+
 fqP0QjIAUNC1c325mi/FpMOq45eWFfpaoAs8ul4f1cchoZvQXDUBUb8JA1nTRnX5VEv9
 AUgg37vPfGRS3gupE3oUqe3Ss5VA4uQBmm1sw0izCB3RDRUGCRGLbnoVt6TvjbItdheu
 kMkuVuE0kAOlN5rcBTA2Ll8ri3pi15q7OvaqaIJ91TpSlUWzClUV68CvpTCGF0NneXWz
 a+93cnB18m69wi3f5zYgssvG47agND3fBlVQNGAD+lrnTFrVuTbAq8CfoahT/kCriT3q
 TN4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Yz8pfnD3TTf3PKM1MTqwj4NVFUnjASbSt+JhUJhNkhA=;
 b=oo55mSgQnrJXqzenFx9f53wkhHGK6d1ZsXE2/sAL1KJXxNd1BscCsfx7/PF+2LGE79
 TeQ8zHpWNjmjYjYqiKvHsc31CJab04ykqbhduvUo/b+SjzbmJq9gKAF4qaWEYYqHd0c+
 Eo5FHDx0O90a+PDDoE3myH6Ru5XUgX+3ux1kkF+xDCawJIBFN9ihodmGj19CnB+2QuVE
 gHie4RmEST7WVxnn8sVtZHUf2xqR+T8ix41VZrdWPnAkejrOH4aqG4X8oCcDoHcs8yq+
 /OGRc8KS7NL62oj5SInfXOwMvbDNIGlwe/rHN2pAW9DSNEEvIHLqCpEWsVGzRZ+uylrT
 Ey7Q==
X-Gm-Message-State: AOAM532vJ2jcVeJylVJtU0aDBfmKt4BA0HLkxkg0BUElGd+j/7Ww2Yzq
 aoFsFwtuOQeTz6yG+tUlXPZ5NO3FNVT/4I+6LYd3kw==
X-Google-Smtp-Source: ABdhPJw1QRIDR8crMiVZEDKLZvijDFdzJEosKSNaVPTNLCkAIcFSi1lsjUnPbQrpFaOuz2y7nw2MzxoSXUQzdstrZqA=
X-Received: by 2002:a9d:6b84:: with SMTP id b4mr11200433otq.302.1597673282464; 
 Mon, 17 Aug 2020 07:08:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTSPLvPRiLXpREbfwSUMv4YvV8mRz2HV_rdNdZ9uK3CjqA@mail.gmail.com>
 <CAL7q81tPCTFG5mr6jwnPrJAhQobP9SuppOeMfDFc31z_9_b_bw@mail.gmail.com>
In-Reply-To: <CAL7q81tPCTFG5mr6jwnPrJAhQobP9SuppOeMfDFc31z_9_b_bw@mail.gmail.com>
Date: Mon, 17 Aug 2020 10:07:51 -0400
Message-ID: <CAB__hTT_whSkFCambUqjebOXOSsMM0hoYUUL-zSFV_b97L8k=g@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Replay Block for UHD 3.15
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============2797123196983844655=="
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

--===============2797123196983844655==
Content-Type: multipart/alternative; boundary="00000000000078298905ad134c1c"

--00000000000078298905ad134c1c
Content-Type: text/plain; charset="UTF-8"

Hi Jonathon,
I sent you a separate email with more details.  I do not see a "no response
packet" error, but rather a slew of Lates (L) for any streaming operation
after the first start/stop (which occurs successfully).
Rob

On Sun, Aug 16, 2020 at 11:28 PM Jonathon Pendlum <
jonathon.pendlum@ettus.com> wrote:

> Hi Rob,
>
> 2) I have issues with repeated streaming (starting / stopping repeatedly)
>> if the Replay block is connected through the DUC to the Radio.  I have not
>> been able to resolve these.
>
>
> Can you describe the issue you are running into? Is it a "no response
> packet" error?
>
> Jonathon
>
> On Thu, Jul 30, 2020 at 12:35 PM Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>> I use the Replay block for both the X310 and N310. But, there are a
>> couple of issues that limit its usefulness. Is there a chance this could be
>> addressed on 3.15?  (I realize that the issues may go away with UHD 4.0).
>>
>> 1) For the N310, you cannot connect the 4-port Replay block directly to
>> the two 2-port Radio blocks.  This is a limitation of the noc_block to
>> crossbar bandwidth. It could be fixed if the default image included two
>> 2-port Replay blocks rather than one 4-port block.  (There is another
>> concern as to whether the external RAM can handle the bandwidth of 500 MS/s
>> that is needed, but I think that as long as you're only streaming out of
>> the block (not streaming in simultaneously) it should work).  Note that the
>> same issue holds for the X310 which has a single 2-port Replay block that
>> restricts it from connecting to the two Radio blocks because of the same
>> noc_block to crossbar bandwidth limitation.  It could be fixed by having
>> two 1-port Replay blocks.
>>
>> 2) I have issues with repeated streaming (starting / stopping repeatedly)
>> if the Replay block is connected through the DUC to the Radio.  I have not
>> been able to resolve these.
>>
>> Rob
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--00000000000078298905ad134c1c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jonathon,<div>I sent you a separate email with more det=
ails.=C2=A0 I do not see a &quot;no response packet&quot; error, but rather=
 a slew of Lates (L) for any streaming operation after the first start/stop=
 (which occurs successfully).</div><div>Rob</div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Aug 16, 2020 at 11=
:28 PM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com">j=
onathon.pendlum@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr">Hi Rob,<div><br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">2) I have issues with repeated strea=
ming (starting / stopping repeatedly) if the Replay block is connected thro=
ugh the DUC to the Radio.=C2=A0 I have not been able to resolve these.</blo=
ckquote><div><br></div><div>Can you describe the issue you are running into=
? Is it a &quot;no response packet&quot; error?</div><div><br></div><div>Jo=
nathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Thu, Jul 30, 2020 at 12:35 PM Rob Kossler via USRP-users &lt=
;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users=
@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr">Hi,<br><div>I use the Replay block for bot=
h the X310 and N310. But, there are a couple of issues that limit its usefu=
lness. Is there a chance this could be addressed on 3.15?=C2=A0 (I realize =
that the issues may go away with UHD 4.0).</div><div><br></div><div>1) For =
the N310, you cannot connect the 4-port Replay block directly to the two 2-=
port Radio blocks.=C2=A0 This is a limitation of the noc_block to crossbar =
bandwidth. It could be fixed if the default image included two 2-port Repla=
y blocks rather than one 4-port block.=C2=A0 (There is another concern as t=
o whether the external RAM can handle the bandwidth of 500 MS/s that is nee=
ded, but I think that as long as you&#39;re only streaming out of the block=
 (not streaming in simultaneously) it should=C2=A0work).=C2=A0 Note that th=
e same issue holds for the X310 which has a single 2-port Replay block that=
 restricts it from connecting to the two Radio blocks because of the same n=
oc_block to crossbar bandwidth limitation.=C2=A0 It could be fixed by havin=
g two 1-port Replay blocks.</div><div><br></div><div>2) I have issues with =
repeated streaming (starting / stopping repeatedly) if the Replay block is =
connected through the DUC to the Radio.=C2=A0 I have not been able to resol=
ve these.</div><div><br></div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--00000000000078298905ad134c1c--


--===============2797123196983844655==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2797123196983844655==--

