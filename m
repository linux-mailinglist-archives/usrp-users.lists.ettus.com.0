Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8AC76C65
	for <lists+usrp-users@lfdr.de>; Fri, 26 Jul 2019 17:10:05 +0200 (CEST)
Received: from [::1] (port=58324 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hr1r9-0007bG-Q9; Fri, 26 Jul 2019 11:10:03 -0400
Received: from mail-vs1-f47.google.com ([209.85.217.47]:46946)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ejkreinar@gmail.com>) id 1hr1r5-0007W2-V5
 for usrp-users@lists.ettus.com; Fri, 26 Jul 2019 11:09:59 -0400
Received: by mail-vs1-f47.google.com with SMTP id r3so36274040vsr.13
 for <usrp-users@lists.ettus.com>; Fri, 26 Jul 2019 08:09:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/4uEX2yPWZ7M5qF5wiaxdNp4cTxSrvMsq7VY02exZ8c=;
 b=gCVBJxqfvc0M5EZu4TMKXi8Tr1CXboC9sC22iSrOVXJk+HnSNpiXiXCgGxFdt2MA4e
 qvAitZjrO0eiQknVOixbLmGR3gnZVp+TW1RLvH8YXgXUMt/BlhhJxKqpIlM+nBbd7bdy
 HEPdFFtBSxti6xNqPR2MFeT3uwobNPJNGnrnzLIjFYwsjkEeSQHoGOOeTgZNDNGVr3fE
 KMKZ5D4o0N3mRtsYMQyfcdDmCSoE7pFF4GERFgzfAQYrAqXLWF34Uka2Z4acINSt3spj
 L3B9Ol32LbrflsG4VPLCAbp+RmKgIOMgNK+PGj/6Kps8oMBNvG/qjZZ67ZHKBtFvhSht
 L/kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/4uEX2yPWZ7M5qF5wiaxdNp4cTxSrvMsq7VY02exZ8c=;
 b=h2gkwkcU0XoczM/lBPEe8TPS6wMMv6QwxxYhJU+/PYRdH/ykV9KGSfBVMQAXNSSDWs
 HrhZFtI+2RwmdABsCeOIj+T6VSDKBakeROf/mrbDr8IxkUXoiMaRKW10XplkZDWxN3Lx
 zILnhscRWSHjQCPdEkjoANTKcQYK+5J+O+xJ5nzl/aLUuf3idOQnLfz3fPrqeoCjYQg8
 ZWZrLwaGarBpdZkLn9po35xkJbBepH1hGthl1gnC1CQbb3T27Hn8N1jHlPuiEeAQ78zD
 Rw21XA3nmziTyN9APQhZh6GZulbYwz1h33Y4BtLoAvSYrwCFX2Kqll3jnBe6BMHcUHUl
 Wqiw==
X-Gm-Message-State: APjAAAUmzFJIy9CHRhmFWzk1og+C7WvsepAMAPqtAXlUX8KjXcyOpTOr
 UPG4m+bFDxlE52ZZZYSNjq9E5X65QZ/p7kv5lmg=
X-Google-Smtp-Source: APXvYqyAbK2DkHyd1NSpgdnyeiKjFFNnEKlFZMN/K7gN0SzPxJOi3vjXdnVMOJy1/MY/vNjJkFYjguh/mIDf3XPQ9eA=
X-Received: by 2002:a67:e9c3:: with SMTP id q3mr61486677vso.5.1564153758870;
 Fri, 26 Jul 2019 08:09:18 -0700 (PDT)
MIME-Version: 1.0
References: <97D6F3B6-019A-41A3-A8D6-06D32C15B528@yahoo.com>
 <CADRnH20Zn3eje8HuKxLV3nJhvKBmPpDkNiGcjX2ojVN80VPdiw@mail.gmail.com>
 <CA+JMMq8yvSWrfv_GcdF8n3b0AEDZdm6M989b8J24G5OzeK57ZA@mail.gmail.com>
In-Reply-To: <CA+JMMq8yvSWrfv_GcdF8n3b0AEDZdm6M989b8J24G5OzeK57ZA@mail.gmail.com>
Date: Fri, 26 Jul 2019 11:09:06 -0400
Message-ID: <CADRnH23c09UnFdxQC_0r8SYJPU39PV78ghioyno9oTjM_p+9pA@mail.gmail.com>
To: Nick Foster <bistromath@gmail.com>
Subject: Re: [USRP-users] RFNoC Polyphase Channelizer updates
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
From: EJ Kreinar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: EJ Kreinar <ejkreinar@gmail.com>
Cc: Royce Connerley <royceconnerley@yahoo.com>,
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6045863947247488681=="
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

--===============6045863947247488681==
Content-Type: multipart/alternative; boundary="0000000000002bf1f3058e96ed65"

--0000000000002bf1f3058e96ed65
Content-Type: text/plain; charset="UTF-8"

Very cool! Feel free to reach out if you have any questions or issues.

Right now it's set up as a M/2 channelizer, and the output rate is 2x input
rate. All the channels come out interleaved and have to be deinterleave in
software (you'll see in the example flowgraph).

Cheers,
EJ

On Thu, Jul 25, 2019, 11:14 AM Nick Foster <bistromath@gmail.com> wrote:

> I'll test! Forgot about this one and now have a very good use case for it.
> I'll let you know how it goes.
>
> On Wed, Jul 24, 2019 at 4:35 PM EJ Kreinar via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi Royce,
>>
>> Phil and I have been working on the channelizer in the theseus-cores repo
>> here: gitlab.com/theseus-cores/theseus-cores
>>
>> The master branch has a (potentially) working channelizer, at least
>> according to my recent tests on the x310, as long as the network interface
>> supports the desired output rate.
>>
>> There's also an fpga solution for channel downselection in a branch that
>> Phil put together. The ball is in my court to turn the crank and merge to
>> master with supporting software, but I haven't gotten much of a chance
>> recently.
>>
>> If you're interested in testing we could definitely use some more people
>> to give it a shot :D Let me know if you need a sample bitstream or if you
>> can build one yourself.
>>
>> EJ
>>
>> On Wed, Jul 24, 2019, 4:39 PM Royce Connerley via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> At the 2018 GRCon, EJ Kreinar spoke about improvements to the RFNoC
>>> polyphase channelizer.  Has there been any activity on this?
>>>
>>> Royce Connerley
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--0000000000002bf1f3058e96ed65
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Very cool! Feel free to reach out=C2=A0if you have any qu=
estions or issues.<div dir=3D"auto"><br></div><div dir=3D"auto">Right now i=
t&#39;s set up as a M/2 channelizer, and the output rate is 2x input rate. =
All the channels come out interleaved and have to be deinterleave in softwa=
re (you&#39;ll see in the example flowgraph).</div><div dir=3D"auto"><br></=
div><div dir=3D"auto">Cheers,</div><div dir=3D"auto">EJ</div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 25=
, 2019, 11:14 AM Nick Foster &lt;<a href=3D"mailto:bistromath@gmail.com">bi=
stromath@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><=
div dir=3D"ltr">I&#39;ll test! Forgot about this one and now have a very go=
od use case for it. I&#39;ll let you know how it goes.<br></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 24, 2=
019 at 4:35 PM EJ Kreinar via USRP-users &lt;<a href=3D"mailto:usrp-users@l=
ists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"auto">Hi Royce,<div dir=3D"auto"><br></div><div dir=3D"auto=
">Phil and I have been working on the channelizer in the theseus-cores repo=
 here: <a href=3D"http://gitlab.com/theseus-cores/theseus-cores" target=3D"=
_blank" rel=3D"noreferrer">gitlab.com/theseus-cores/theseus-cores</a></div>=
<div dir=3D"auto"><br></div><div dir=3D"auto">The master branch has a (pote=
ntially) working channelizer, at least according to my recent tests on the =
x310, as long as the network interface supports the desired output rate.</d=
iv><div dir=3D"auto"><br></div><div dir=3D"auto">There&#39;s also an fpga s=
olution for channel downselection in a branch that Phil put together. The b=
all is in my court to turn the crank and merge to master with supporting so=
ftware, but I haven&#39;t gotten much of a chance recently.=C2=A0</div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">If you&#39;re interested in testi=
ng we could definitely use some more people to give it a shot :D Let me kno=
w if you need a sample bitstream or if you can build one yourself.</div><di=
v dir=3D"auto"><br></div><div dir=3D"auto">EJ</div><div dir=3D"auto"></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Wed, Jul 24, 2019, 4:39 PM Royce Connerley via USRP-users &lt;<a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">us=
rp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">At the 2018 GRCon, EJ Kreinar spoke about improveme=
nts to the RFNoC polyphase channelizer.=C2=A0 Has there been any activity o=
n this?<br>
<br>
Royce Connerley<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">http://lists=
.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000002bf1f3058e96ed65--


--===============6045863947247488681==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6045863947247488681==--

