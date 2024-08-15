Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E1E952A13
	for <lists+usrp-users@lfdr.de>; Thu, 15 Aug 2024 09:43:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 72A613853CC
	for <lists+usrp-users@lfdr.de>; Thu, 15 Aug 2024 03:43:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1723707798; bh=lDaOLojIpQOuvjxzlbdsj3cEyf0DASUZhaLbRFFJ8nU=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=hEn27lG1rThQ3L0dDJ2oKEPJd2uuDF2a99MTxOfy38e0hGs29cjmUZyMgrWAplNcr
	 AkjOt3tc9RZr5YMm4lXPNu84TeIQWkiy/QQ0HAAF99lWC5CecE7jsr30mIBytH4AxT
	 qZAjdbOEEY8ZwdDW7QFYf9kYmYOVvR7Xl9Ymwyhqv+VHehs6xEefgEhCSTcQk3/mQ+
	 MbILuXZxR025+Dm69OwN2RRQDKs5NYNh7igNIZgwWKnJwHrzYIrE+9BtGmD+ImjgEq
	 ARWIUMVAOjHB8RlZHY+FOAyIDa2dx2LGd5jejxHELUfz3SE8m3sR/vbu7zebaxhzPa
	 3UjWNIPV6zTNA==
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 44AA0384C6B
	for <usrp-users@lists.ettus.com>; Thu, 15 Aug 2024 03:42:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZnGObRKV";
	dkim-atps=neutral
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a83869373b6so21652866b.2
        for <usrp-users@lists.ettus.com>; Thu, 15 Aug 2024 00:42:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723707758; x=1724312558; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jtOgF/mAuixFYA05uarx1g46RDNBjOahwA2UyOnaqcw=;
        b=ZnGObRKVZ2DDBCkkC0MlE/3F2So9mf2X89mtte1HsMiaSswcDtM0/oYtSMf2mMLhvg
         mlbdsafvOnoQK58eaOxSTfLMGUJiwmPIKlAbMsL4f03qlms6ucuSFYXo7/ju181TzQTA
         bbFOoZNMZNoPjGaI6ghHEGJCv+8Sa8i/8lvsPSJ+Fk7/StgpE6IPasc2K7DktLBQ/YkA
         H2+4tmNAlD19QCN0xCg4WhqDQdjPFELa6kJan62CfgW+ObJZQREcLiZadMdjiBRDFseZ
         0x+FvjMlQg8NP5BFr4NxEWD4fPpZnXnRZkEjiZkzbEhz9BazI6uC3vtPlB4uDEcyzcs6
         C5uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723707758; x=1724312558;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jtOgF/mAuixFYA05uarx1g46RDNBjOahwA2UyOnaqcw=;
        b=URvWUaQ+lYonODM+OwUpJOgVMdjsEHCBaKdwB19WUPzzwm3Ka0ncginlWT8bDKfqUa
         ZSR8++etYN043xV2wVUPV1c3GO/IDhtVWNS82zeazBrBK+YUrFoV63CHnxInfw7ehM0L
         BU3dX8XGLeP45wtyIo9bIhkBwjg0wuwrS6vprB9J1QAstNrTG9OmK4gA53G7SotfL8vJ
         Qnk4OvLfgWlfE4ZeOIAlsHWcC6+zxoT6FpqY84CSjVySrCPQ6bLw6hnDywARHkQ21XU9
         7AXbyMjlkndloraEKUYKeEMsLIa+yE76+cznFsJLZX7KzSn3xBnzuo6ZkY5tLnEMpNDA
         tR2g==
X-Gm-Message-State: AOJu0YzVGV9wVasW7NV2i7F4ak/Adhp8ObxRkb+hltGnrwmfT1UluB7a
	MmmkBA0L53AkRUYy/XCgd7YtYXrb3sjnBg3Sx2k+XrHZRps1cDMq9U66sCbpYsYdys60Uu3/aMd
	yaq5CLs0HIUK7JXoNtwPxO6wx/AE=
X-Google-Smtp-Source: AGHT+IHB3p3vAPtbi/ZGLJKaJ7719MlqgVT3uNAHZ3akxnCR1lxjuf2kK66xEqXl9XHS8kCF0k6L11W73A7xVqgkbks=
X-Received: by 2002:a17:907:e9e:b0:a77:c330:ad9d with SMTP id
 a640c23a62f3a-a836709548emr376864166b.61.1723707757635; Thu, 15 Aug 2024
 00:42:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAL4V06r9bLo+Wo-JPP4H70hwdJNJCy-m1ER5xwoXp7KHQkryBQ@mail.gmail.com>
 <84320f82-be18-47b9-92be-24339e6b1dc5@gmail.com> <CAL4V06oDcG=XFKQKkLoaKjDMXDEH_KMZTW8Lg5Q2dxhbPKQvLw@mail.gmail.com>
 <637859ba-8167-4643-ae42-743a2e73b20a@gmail.com> <CAL4V06pXvgzSBXNieRr4N2XSVRa_0bdXJKNCG7aYCWbKQzf0dg@mail.gmail.com>
 <0129e687-c21b-4090-80d3-562ef9ee1d3b@gmail.com> <CAL4V06oB24-ii1th4407zM_1ENXOMi39PGuDMnbfUQ75LWZL9w@mail.gmail.com>
 <e30f4c1f-447d-4e69-960b-5af0cbd6fd26@gmail.com>
In-Reply-To: <e30f4c1f-447d-4e69-960b-5af0cbd6fd26@gmail.com>
From: Brajesh <brajesh153@gmail.com>
Date: Thu, 15 Aug 2024 13:12:26 +0530
Message-ID: <CAL4V06px2HG6JkvGomxsyC12vwA-4zpwmEwWm2iERBYw-QOE=g@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: X4REXFNDLD7IOPPJJZZB4WLCDKIVZB6D
X-Message-ID-Hash: X4REXFNDLD7IOPPJJZZB4WLCDKIVZB6D
X-MailFrom: brajesh153@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reg. N210 FPGA modification
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X4REXFNDLD7IOPPJJZZB4WLCDKIVZB6D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8305786363853835906=="

--===============8305786363853835906==
Content-Type: multipart/alternative; boundary="00000000000097345e061fb3fc4a"

--00000000000097345e061fb3fc4a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 15, 2024 at 4:01=E2=80=AFAM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 14/08/2024 03:52, Brajesh wrote:
>
>
>
> That's great.
> If possible, request your time for interactive session. This request is t=
o
> understand codebase (
> https://github.com/EttusResearch/fpga/commit/78eab419fdcdc18f4da8fd33f267=
af6c4d0494f6
> )  and get starting point to start for data rate modifications.
>
> You should go through the official support channels--the e-mail you got
> from "support@ettus.com" <support@ettus.com> will have given you a URL.
>
> But unless you've purchased a higher-level support package, you aren't
> going to get an engineer to sit down with you and
>   tell you where to put modified code, and how that code is best
> structured, etc.
>
> Every new purchase includes a "initial bringup" level of support, which
> absolutely DOES NOT include detailed hand-holding
>   through modifying the FPGA code.
>
> Even if you *could* get that level of support, I would *NOT* be the perso=
n
> doing it.  I didn't write that FPGA code, and I'm
>   not primarily an FPGA developer.
>

I understand these clauses of support especially for academia. But still
thank you for clarifying.


>
>> I'm not sure what you're looking for apart from what you've already
>> found, and I've already pointed you to.   The FPGA source-code
>>   is freely available.  There are documents that describe the work-flow
>> for making custom mods to the N2xx FPGA images.
>>   The FPGA "architecture" is common between (obsolete) USRP2 and N2xx
>> hardware.  The follow-on architecture is referred
>>   to in the FPGA codebase as "usrp3", but that's just the naming of the
>> FPGA architecture.
>>
>> Like I have said previously, there is no "structured walk-through"
>> document that describes, in a high-level way, the architecture
>>   of the FPGA codebase.  The codebase is the document.  The same is
>> basically true for the host-side UHD library.  The architecture
>>   changes often-enough that by the time a "structured walk-through"
>> document could be considered "complete", the architecture
>>   underneath it, at least the details, would have changed.  Such is the
>> nature of an evolving code-base.
>>
>> Now, for the "usrp2" FPGA architecture, THAT codebase has been relativel=
y
>> static for many years.  But a goodly chunk of it
>>   was written by people who have long-since departed the company.
>> Occasional maintenance is done on it, but for the
>>   most part, it has been the same for many years.  Again, though, the
>> codebase IS the documentation.
>>
>>
> Thanks again for shared details.
>
>
>

--00000000000097345e061fb3fc4a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Aug 15, 2024 at 4:01=E2=80=AF=
AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonb=
raun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 14/08/2024 03:52, Brajesh wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr"><br>
        <div class=3D"gmail_quote">
          <div><br>
          </div>
          <div>That&#39;s great.=C2=A0</div>
          <div>If possible, request your time for interactive session.
            This request is to understand codebase ( <a href=3D"https://git=
hub.com/EttusResearch/fpga/commit/78eab419fdcdc18f4da8fd33f267af6c4d0494f6"=
 target=3D"_blank">https://github.com/EttusResearch/fpga/commit/78eab419fdc=
dc18f4da8fd33f267af6c4d0494f6</a>
            )=C2=A0 and get starting point to start for data rate
            modifications.</div>
        </div>
      </div>
    </blockquote>
    You should go through the official support channels--the e-mail you
    got from <a href=3D"mailto:support@ettus.com" target=3D"_blank">&quot;s=
upport@ettus.com&quot;</a> will have given you a URL.<br>
    <br>
    But unless you&#39;ve purchased a higher-level support package, you
    aren&#39;t going to get an engineer to sit down with you and<br>
    =C2=A0 tell you where to put modified code, and how that code is best
    structured, etc.<br>
    <br>
    Every new purchase includes a &quot;initial bringup&quot; level of supp=
ort,
    which absolutely DOES NOT include detailed hand-holding<br>
    =C2=A0 through modifying the FPGA code.<br>
    <br>
    Even if you *could* get that level of support, I would *NOT* be the
    person doing it.=C2=A0 I didn&#39;t write that FPGA code, and I&#39;m<b=
r>
    =C2=A0 not primarily an FPGA developer. =C2=A0=C2=A0</div></blockquote>=
<div>=C2=A0</div><div>I understand these clauses of support especially for =
academia. But still thank you for clarifying.=C2=A0</div><div>=C2=A0<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div><blockquote type=
=3D"cite"><div dir=3D"ltr"><div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div> <br>
              I&#39;m not sure what you&#39;re looking for apart from what
              you&#39;ve already found, and I&#39;ve already pointed you to=
.=C2=A0=C2=A0
              The FPGA source-code<br>
              =C2=A0 is freely available.=C2=A0 There are documents that de=
scribe
              the work-flow for making custom mods to the N2xx FPGA
              images.<br>
              =C2=A0 The FPGA &quot;architecture&quot; is common between (o=
bsolete)
              USRP2 and N2xx hardware.=C2=A0 The follow-on architecture is
              referred<br>
              =C2=A0 to in the FPGA codebase as &quot;usrp3&quot;, but that=
&#39;s just the
              naming of the FPGA architecture.<br>
              <br>
              Like I have said previously, there is no &quot;structured
              walk-through&quot; document that describes, in a high-level
              way, the architecture<br>
              =C2=A0 of the FPGA codebase.=C2=A0 The codebase is the docume=
nt.=C2=A0
              The same is basically true for the host-side UHD library.=C2=
=A0
              The architecture<br>
              =C2=A0 changes often-enough that by the time a &quot;structur=
ed
              walk-through&quot; document could be considered &quot;complet=
e&quot;, the
              architecture<br>
              =C2=A0 underneath it, at least the details, would have
              changed.=C2=A0 Such is the nature of an evolving code-base.<b=
r>
              <br>
              Now, for the &quot;usrp2&quot; FPGA architecture, THAT codeba=
se has
              been relatively static for many years.=C2=A0 But a goodly chu=
nk
              of it<br>
              =C2=A0 was written by people who have long-since departed the
              company.=C2=A0 Occasional maintenance is done on it, but for
              the<br>
              =C2=A0 most part, it has been the same for many years.=C2=A0 =
Again,
              though, the codebase IS the documentation.<br>
              <br>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>Thanks again for shared details.</div>
          <div><br>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div></div>

--00000000000097345e061fb3fc4a--

--===============8305786363853835906==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8305786363853835906==--
