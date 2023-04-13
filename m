Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DC46E0FE1
	for <lists+usrp-users@lfdr.de>; Thu, 13 Apr 2023 16:23:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B5D7B3840A1
	for <lists+usrp-users@lfdr.de>; Thu, 13 Apr 2023 10:23:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681395822; bh=1JOLK/c/oiOv9zXCb/IcH3x8G0n39UfIYT4nhlzjNMY=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=v/UvTvSexhSzmRZHePGdv3x2P9iEGUS4tBo1n30BlZidjFZFHbYDV1rXUNSAoU8mX
	 smuhFCtWrGsUR6COLYaSbokO0POpAtziXb2jVGuZ9Jg0rWKcpFSyG7zvQoXuZCv0MA
	 Km1tOWQfYxPKkGDd2gQc8KyzeLwg9CHqwBUeVEfspH8dYiXPASEToubsZ6Flz5iB3v
	 7sFnWMtPXnDwN5MsbnfcAsrUvdsEyX1tiGPjJnslDPl8GtkeZHO1RDjmAL8hiOtVD+
	 axQ+HW8zzbttaB2mwpVlayLkF/6mMSDgnyul17EQDT55t2XfQ3xsHqJ5xUPXCvvcrJ
	 ArgNOxbbJqOtA==
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 3DEA7381160
	for <usrp-users@lists.ettus.com>; Thu, 13 Apr 2023 10:23:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="JToz99Er";
	dkim-atps=neutral
Received: by mail-pj1-f42.google.com with SMTP id f2so6701676pjs.3
        for <usrp-users@lists.ettus.com>; Thu, 13 Apr 2023 07:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1681395789; x=1683987789;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qwqqfINZfOVIgiKSRxxUfRXKxoVeLyeAs1rTXxnR1ys=;
        b=JToz99Er9w5E54TNcpAji+rHPHHMtprYy73QdRCJ912owjDO+8jExijUDz2dU+9qN7
         y/Y3md0BRmxlRh/8mXpPBDTf2dFYEtim9iq6y1riUxTHEbn5VuoYiSQRTKgPO1xYA7eA
         akMCqNtfo+n5N5eCiOHVLvsCVXnKf5U8xe0bCPEUBeZqhnmXbTKv5XcsRvt00RvwZxuZ
         utVsN38ZgY0vxWGTws84xdeJZqMbhWAF1wKNURXy8bfAHBtfWsX9p6BOZ7rpXMi20GOe
         5lUXNJhjixmjc4z45F6COD2sciXP/Isk86+kSGFetFCi+BsraI2pJHrBARZmQ1ek4Sg3
         pfGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681395789; x=1683987789;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qwqqfINZfOVIgiKSRxxUfRXKxoVeLyeAs1rTXxnR1ys=;
        b=NG9yWTc3KmaH+0TMRMSci+3UARZx+zdij5kvp/NF71YD0sFf3WGzpLgXT9TN+tyKIE
         kW37n7zTDc2KwLWLV46l6whns9af8lcJ6sk3Jj3Cr2PloZpimOEvNunsW996F0M/6NAa
         hRaST3mkc82G108GbrkJO2u/AeynpJPFErmLvMot5A8iNYBDuNDHxqzdt0jqnuVvhHXX
         gOaf/j/aAnE3z1203D72T98rWazsgoyvu8vOJ2+bznteg+ADLOcrBHnPUzv5aXjmtXTV
         P5UHnkEWWgyUSPysQpknSp+fksQl4XgSx9XJzwW6vO44TkM+BJ+VmvgprDJz9Mx9MkjB
         lH/g==
X-Gm-Message-State: AAQBX9eCf6lG9kyjmFnNm6fFVb8TCe/PZyamvbyX/N+ZOq1+JSkQa+Kg
	GxgCarPCRVSTeG7ImkoKfRJ4r7cTZ3SZx073iyREKUM0
X-Google-Smtp-Source: AKy350ZpImpv+v5kpVhRYXcK1U03G51Oi5xZGuH0WntSJiIPX5YprURaEdj8sOvEb92GSGfEJSmqL/7HLAeeD2fdU5I=
X-Received: by 2002:a17:903:27c8:b0:1a6:83d2:8a08 with SMTP id
 km8-20020a17090327c800b001a683d28a08mr659916plb.9.1681395788802; Thu, 13 Apr
 2023 07:23:08 -0700 (PDT)
MIME-Version: 1.0
References: <gUDft9N9yvYDckG3aB4fwToRFd6kCIUc8jqcdfD4Wc@lists.ettus.com> <CAFche=g+T3qPDgYs60MLFzcVHrFe0XDPB7wD+Znx7mVP33qSLw@mail.gmail.com>
In-Reply-To: <CAFche=g+T3qPDgYs60MLFzcVHrFe0XDPB7wD+Znx7mVP33qSLw@mail.gmail.com>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Thu, 13 Apr 2023 10:22:57 -0400
Message-ID: <CAGNhwTNOUS+6g7fJ92fTFq9yU7ELdTVZpRas_5vKQLAwqmmc7A@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: MWXC47YEGKRXT44ZTGESU47BIGHKWO3W
X-Message-ID-Hash: MWXC47YEGKRXT44ZTGESU47BIGHKWO3W
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: h57jafari@gmail.com, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: intel X710DA4 NIC card and breakout cable
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MWXC47YEGKRXT44ZTGESU47BIGHKWO3W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3702348058261695420=="

--===============3702348058261695420==
Content-Type: multipart/alternative; boundary="000000000000b803b105f93876aa"

--000000000000b803b105f93876aa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Guessing eBay or equivalent would have the X710-DA4 ... haven't looked
myself, but it's my go-to for less-common but still valuable devices.

If you want to use the X410 as 4x 10 GbE links (and NOT 1x 100 GbE link),
then you might consider the Intel XL710-QDA2 [2]. It provides 2 QSFP+ (40
GbE as 4x 10 GbE) ports, but limits the aggregate links to 40 GbE -- which
can be (I think) all on a single port or spread between them. To use this
NIC, you'd need 1:4 breakout cables -- probably 2 of them just to make sure
all 4 links are accounted for regardless of the NIC settings. Note that
there is a bug in the 700-series NIC Linux driver that Intel knows about
but says they will not be fixing, since their forward-looking development
is on the 800-series drivers; this bug limits max aggregate data rates
going through the Linux kernel to something like 4 GB/s (I don't recall the
exact number, but it's reasonably high enough that most USRP users will not
be impacted by it).

If you want to use the X410 as 4x 10 GbE links rather than 1x 100 GbE link
(or possibly both), then you might consider the Intel E810 CQDA1 (or CQDA2)
NIC [3] along with a QSFP+ <-> QSFP+ cable (or QSFP28, but if you're just
using 10 GbE links then QSFP+ is sufficient). You would then use the Intel
Ethernet Port Configuration Tool [1] to set the NIC as 4x10 and use the
X4_200 FPGA image on the X410 USRP to match the 4x10 GbE links on both ends=
.

[1] <
https://www.intel.com/content/www/us/en/download/19435/ethernet-port-config=
uration-tool-all-supported-oss.html
>

Note that for branding, the USRP's QSFP+/28 ports are vendor agnostic.
Hence, you can just select compatibility with respect to the NIC's branding
(e.g., Intel or Mellanox or whatever).

One place I regularly purchase from is FS ... here's a links to their items
per what I've noted:

[2] XL710-QDA2
* NIC : https://www.fs.com/products/160019.html?attribute=3D39290&id=3D6526=
43
* Cable (3m) QSFP+ <-> 4xSFP+, Intel branded :
https://www.fs.com/products/36276.html?attribute=3D9439&id=3D190204

[3] E810-CQDA1
* NIC: https://www.fs.com/products/160017.html
* Cable (3m) QSFP28 <-> QSFP28, Intel branded :
https://www.fs.com/products/49577.html
* Cable (3m) QSFP+ <-> QSFP+, Intel branded :
https://www.fs.com/products/36279.html?attribute=3D9722&id=3D192732

I hope this is useful! - MLD

On Wed, Apr 12, 2023 at 5:33=E2=80=AFPM Wade Fife <wade.fife@ettus.com> wro=
te:

> This is the card Ettus sells for this product. It's the Intel X7A-DA2.
>
> https://www.ettus.com/all-products/10gige-kit/
>
> For X410 cables, if you want to use 4 x 10 GbE, go to this link and click
> to view the accessories for X410. Look for the "QSFP28 To 4xSFP28 Breakou=
t
> Cable, 1M".
>
>
> https://www.ni.com/sic/configurator/configure.action?sfId=3DNI&wcs_l=3Den=
-us&wcs_k=3Dusrp-software-defined-radio-device&wcs_s=3D523502
>
> Thanks,
>
> Wade
>
>
> On Mon, Apr 10, 2023 at 3:06=E2=80=AFPM <h57jafari@gmail.com> wrote:
>
>> Hi, Does any one can share the link to purchase intel X710DA4 NIC card
>> and breakout cable that they purchased and actually it worked with USRPX=
410
>> or other USRP. It is not clear very well through
>> https://kb.ettus.com/X410 or other online resources. Thank you.
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b803b105f93876aa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Guessing eBay or equivalent would have the X710-DA4 ... ha=
ven&#39;t looked myself, but it&#39;s my go-to for less-common but still va=
luable devices.<div><br></div><div>If you want to use the X410 as 4x 10 GbE=
 links (and NOT 1x 100 GbE link), then you might consider the Intel XL710-Q=
DA2 [2]. It provides 2 QSFP+ (40 GbE as 4x 10 GbE) ports, but limits the ag=
gregate links to 40 GbE -- which can be (I think) all on a single port or s=
pread between them. To use this NIC, you&#39;d need 1:4 breakout cables -- =
probably 2 of them just to make sure all 4 links are accounted for regardle=
ss of the NIC settings. Note that there is a bug in the 700-series NIC Linu=
x driver that Intel knows about but says they will not be fixing, since the=
ir forward-looking development is on the 800-series drivers; this bug limit=
s max aggregate data rates going through the Linux kernel to something like=
 4 GB/s (I don&#39;t recall the exact number, but it&#39;s reasonably high =
enough that most USRP users will not be impacted by it).<br><div><br></div>=
<div>If you want to use the X410 as 4x 10 GbE links rather than 1x 100 GbE =
link (or possibly both), then you might consider the Intel E810 CQDA1 (or C=
QDA2) NIC [3] along with a QSFP+ &lt;-&gt; QSFP+ cable (or QSFP28, but if y=
ou&#39;re just using 10 GbE links=C2=A0then QSFP+ is sufficient). You would=
 then use the Intel Ethernet Port Configuration Tool [1] to set the NIC as =
4x10 and use the X4_200 FPGA image on the X410 USRP to match the 4x10 GbE l=
inks on both ends.</div><div><br></div><div>[1] &lt;=C2=A0<a href=3D"https:=
//www.intel.com/content/www/us/en/download/19435/ethernet-port-configuratio=
n-tool-all-supported-oss.html">https://www.intel.com/content/www/us/en/down=
load/19435/ethernet-port-configuration-tool-all-supported-oss.html</a> &gt;=
</div><div><br></div><div>Note that for branding, the USRP&#39;s=C2=A0QSFP+=
/28 ports are vendor agnostic. Hence, you can just select compatibility wit=
h respect to the NIC&#39;s branding (e.g., Intel or Mellanox or whatever).<=
/div><div><br></div><div>One place I regularly purchase from is FS ... here=
&#39;s a links to their items per what I&#39;ve noted:</div><div><br></div>=
<div>[2] XL710-QDA2</div><div>* NIC :=C2=A0<a href=3D"https://www.fs.com/pr=
oducts/160019.html?attribute=3D39290&amp;id=3D652643">https://www.fs.com/pr=
oducts/160019.html?attribute=3D39290&amp;id=3D652643</a></div><div>* Cable =
(3m) QSFP+ &lt;-&gt; 4xSFP+, Intel branded :=C2=A0<a href=3D"https://www.fs=
.com/products/36276.html?attribute=3D9439&amp;id=3D190204">https://www.fs.c=
om/products/36276.html?attribute=3D9439&amp;id=3D190204</a></div><div><br><=
/div><div>[3] E810-CQDA1</div><div>* NIC:=C2=A0<a href=3D"https://www.fs.co=
m/products/160017.html">https://www.fs.com/products/160017.html</a></div><d=
iv>* Cable (3m) QSFP28 &lt;-&gt; QSFP28, Intel branded :=C2=A0<a href=3D"ht=
tps://www.fs.com/products/49577.html">https://www.fs.com/products/49577.htm=
l</a></div><div><div>* Cable (3m) QSFP+ &lt;-&gt; QSFP+, Intel branded :=C2=
=A0<a href=3D"https://www.fs.com/products/36279.html?attribute=3D9722&amp;i=
d=3D192732">https://www.fs.com/products/36279.html?attribute=3D9722&amp;id=
=3D192732</a></div></div><div><br></div><div>I hope this is useful! - MLD</=
div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Wed, Apr 12, 2023 at 5:33=E2=80=AFPM Wade Fife &lt;<a href=3D"=
mailto:wade.fife@ettus.com">wade.fife@ettus.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>This i=
s the card Ettus sells for this product. It&#39;s the Intel X7A-DA2.<br></d=
iv><div><br></div><div><a href=3D"https://www.ettus.com/all-products/10gige=
-kit/" target=3D"_blank">https://www.ettus.com/all-products/10gige-kit/</a>=
</div><div><br></div><div>For X410 cables, if you want to use 4 x 10 GbE, g=
o to this link and click to view the accessories for X410. Look for the &qu=
ot;QSFP28 To 4xSFP28 Breakout Cable, 1M&quot;.<br></div><div><br></div><div=
><a href=3D"https://www.ni.com/sic/configurator/configure.action?sfId=3DNI&=
amp;wcs_l=3Den-us&amp;wcs_k=3Dusrp-software-defined-radio-device&amp;wcs_s=
=3D523502" target=3D"_blank">https://www.ni.com/sic/configurator/configure.=
action?sfId=3DNI&amp;wcs_l=3Den-us&amp;wcs_k=3Dusrp-software-defined-radio-=
device&amp;wcs_s=3D523502</a></div><div><br></div><div>Thanks,</div><div><b=
r></div><div>Wade<br></div><div><br></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 10, 2023 at 3:06=E2=
=80=AFPM &lt;<a href=3D"mailto:h57jafari@gmail.com" target=3D"_blank">h57ja=
fari@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><p>Hi, Does any one can share the link to purchase intel X710=
DA4 NIC card and breakout cable that they purchased and actually it worked =
with USRPX410 or other USRP. It is not clear very well through <a href=3D"h=
ttps://kb.ettus.com/X410" target=3D"_blank">https://kb.ettus.com/X410</a> o=
r other online resources. Thank you.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000b803b105f93876aa--

--===============3702348058261695420==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3702348058261695420==--
