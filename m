Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A68E926E555
	for <lists+usrp-users@lfdr.de>; Thu, 17 Sep 2020 21:32:20 +0200 (CEST)
Received: from [::1] (port=35902 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kIzdD-0006Ig-U6; Thu, 17 Sep 2020 15:31:47 -0400
Received: from mail-oi1-f179.google.com ([209.85.167.179]:37152)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kIzdA-0006EH-6a
 for usrp-users@lists.ettus.com; Thu, 17 Sep 2020 15:31:44 -0400
Received: by mail-oi1-f179.google.com with SMTP id a3so3834694oib.4
 for <usrp-users@lists.ettus.com>; Thu, 17 Sep 2020 12:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=in9NrDQ68snBpch4igjnNEnRxcovxpeV3MgjEI1Zovk=;
 b=BM9jEK39IX2/JeGb9aReRfR0BOc4n4Rc6BryuWam93pMR8KKbBCNRMJ8PkLNWSTnHm
 vECCqgLeuYeUhtHfzvetJIQM3lNMoJZT7zyUduAEMPOvLRBkpWEsArSi951k7bo4oP/c
 ZfDzabpBAihArs0hR8oMKQAUVUGGVMBgK1cZDf6t36aA9WRJ+97HBLSBXy2QdNGx/MGO
 oDt4RTBMB9LYT7/d3vFmLjpudr9//vPokOlcVW30ZO8XaEPFMIDHfAzLqSxFsyuGaKHA
 G8GhGRq0jjCVbi7PHyPD6MZwICfq6iq7ERofO6bcDSeNZvG5LxMoNYN1HJGcslcz3kUv
 XzaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=in9NrDQ68snBpch4igjnNEnRxcovxpeV3MgjEI1Zovk=;
 b=rK5k6K7KrT9PM1Nc/5Qie++xoOnD8F7Z61i+8BGnQLrrl4x8dwE0nFzM5mz7hpR4E1
 NfTzofLhp6crKJPf2Lm2R2ykAtADaNmYnoMZohYynxkegs9vcLblrvErbAJMCyedYyyy
 FB29i1kPKiE885L3bjohJgpwZcHwqk6NVHXk9cgurreTYzATP8dX2Xuh+S8RhpEECTlb
 98iiQUkxRZDKOTpu3THg5zsisOGB1I0qPxMIf4D1XazPPqf7UXhB+4KsnCH200365mJb
 eTVI6zdHE0i1ineUhDA6hW4CVmyvFK4mJmcKLDDvBzUdP/ytUew3Xeyj0JXwfiD68I7w
 HPBQ==
X-Gm-Message-State: AOAM5317U+HXfZe4SfVBCti7DVqV5aIewgEyaBC1Q33JyUMJ6C6sqonR
 /gqAvjz/MfjCmrFIvvoJHCESl7TYYpS6z2lS2pUZ6gB3M2k=
X-Google-Smtp-Source: ABdhPJyuyoEO6Fi4AtG2pjrFpMH0oYLq65PxYFkZ6zR2/0wZQVR0+07mkiRcrDD0JG5dnKGmI0dFDSFPPzDOokH0JBI=
X-Received: by 2002:aca:b454:: with SMTP id d81mr7089903oif.150.1600371063093; 
 Thu, 17 Sep 2020 12:31:03 -0700 (PDT)
MIME-Version: 1.0
References: <MN2PR12MB33121DCC88D99FD31F550917B83E0@MN2PR12MB3312.namprd12.prod.outlook.com>
 <CAFche=ibJcUOWYhFVJUgqSx9SNWP3gvAQubTt=b6J=v=dSsTiA@mail.gmail.com>
In-Reply-To: <CAFche=ibJcUOWYhFVJUgqSx9SNWP3gvAQubTt=b6J=v=dSsTiA@mail.gmail.com>
Date: Thu, 17 Sep 2020 15:30:52 -0400
Message-ID: <CAB__hTR3pOdLahQYMqyUCu-3h-=X8By0bypZPLAZjoXwaDahFg@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Subject: Re: [USRP-users] RFNoC block not fully recognized by UHD 4.0
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
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4266516995114423663=="
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

--===============4266516995114423663==
Content-Type: multipart/alternative; boundary="000000000000b9bdb005af876c7f"

--000000000000b9bdb005af876c7f
Content-Type: text/plain; charset="UTF-8"

Hi Wade,
Do you mean build the block controller in tree? Or do you mean place the
yml file in the uhd share folder? Or ??
Rob

On Thu, Sep 17, 2020 at 12:01 PM Wade Fife via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Jim,
>
> I'm so glad you're trying this out! This is a known issue that we're
> hoping to fix very soon, so you probably did everything right. In the
> meantime, you could put your block in-tree for testing purposes. You can
> also interact with it as "0/Block#0". I'll see if we can add a note to the
> guide to indicate this might not show up correctly until the issue is
> resolved.
>
> Thanks,
>
> Wade
>
> On Thu, Sep 17, 2020 at 9:58 AM Jim Palladino via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello,
>>
>> I just updated my rfnoc workflow to UHD 4.0 this week. I've gone through
>> the process of creating an RFNoC block, building the corresponding FPGA
>> image, putting it on an E320 (had to upgrade MPM), and seeing the block is
>> present when executing uhd_usrp_probe. The problem is that the block shows
>> up as "* 0/Block#0", and not "* 0/Gain#0". Basically, I'm trying to go
>> through the tuturial.
>>
>>       _____________________________________________________
>> |    /
>> |   |       RFNoC blocks on this device:
>> |   |
>> |   |   * 0/Block#0
>> |   |   * 0/DDC#0
>> |   |   * 0/DUC#0
>> |   |   * 0/DmaFIFO#0
>> |   |   * 0/Radio#0
>>
>> I've confirmed that I have a gain.yml file under my ../uhd/rfnoc/blocks
>> folder with the correct noc_id. If I do a uhd_usrp_probe with the
>> --init-only option, I get:
>>
>> ------------------------------
>> [WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID
>> 0xbdc26af0, 0xffff
>> ------------------------------
>>
>> I confirmed that this Noc-ID matches the ID in my gain.yml file. I
>> started digging into uhd_usrp_probe code (I'm not a C++ person) and noticed
>> that the registry_factory section of code has "FIXME TODO" under the
>> descriptor registry section, but has code for the direct registry section:
>>
>> -------------------------------
>> block_factory_info_t factory::get_block_factory(noc_id_t noc_id,
>> device_type_t device_id)
>> {
>>     // First, check the descriptor registry
>>     // FIXME TODO
>>
>>     // Second, check the direct registry
>>     block_device_pair_t key{noc_id, device_id};
>>
>>     if (!get_direct_block_registry().count(key)) {
>>         key = block_device_pair_t(noc_id, ANY_DEVICE);
>>     }
>>     if (!get_direct_block_registry().count(key)) {
>>         UHD_LOG_WARNING("RFNOC::BLOCK_FACTORY",
>>             "Could not find block with Noc-ID " << std::hex << "0x" <<
>> key.first << ", 0x"
>>                                                 << key.second <<
>> std::dec);
>>         key = block_device_pair_t(DEFAULT_NOC_ID, ANY_DEVICE);
>>     }
>>     return get_direct_block_registry().at(key);
>> }
>> ----------------------------------
>>
>> Does this mean that uhd_usrp_probe is not even looking at the yml files
>> and only looks for directly registered blocks? I'm not sure what directly
>> registered means and if my example "gain" block should somehow be directly
>> registered.
>>
>> I was thinking that this is just something incomplete that doesn't work
>> with UHD right now, but in the "Getting Started with RFNoC in UHD 4.0"
>> guide (https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0), they
>> show the Gain block showing up correctly when doing a uhd_usrp_probe.
>>
>> So, I don't understand why this isn't working or how it should work. Some
>> background, I cloned/built:
>> 1) UHD (v4.0.0.0 tag)
>> 2) gnuradio (3.8.2.0 tag)
>> 3) gr-ettus (maint-3.8-uhd4.0 branch)
>>
>> I "believe" my paths/environment are setup correctly.
>>
>> Thanks for any help.
>> Jim
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000b9bdb005af876c7f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Wade,<div>Do you mean build the block controller in tre=
e? Or do you mean place the yml file in the uhd share folder? Or ??</div><d=
iv>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Thu, Sep 17, 2020 at 12:01 PM Wade Fife via USRP-users &lt;<=
a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr">
<div>Hi Jim,</div><div><br></div><div>I&#39;m so glad you&#39;re trying thi=
s=20
out! This is a known issue that we&#39;re hoping to fix very soon, so you=
=20
probably did everything right. In the meantime, you could put your block
 in-tree for testing purposes. You can also interact with it as=20
&quot;0/Block#0&quot;. I&#39;ll see if we can add a note to the guide to in=
dicate this
 might not show up correctly until the issue is resolved.<br></div><div><br=
></div><div>Thanks,</div><div><br></div><div>Wade</div>

</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Thu, Sep 17, 2020 at 9:58 AM Jim Palladino via USRP-users &lt;<a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettu=
s.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I just updated my rfnoc workflow to UHD 4.0 this week. I&#39;ve gone throug=
h the process of creating an RFNoC block, building the corresponding FPGA i=
mage, putting it on an E320 (had to upgrade MPM), and seeing the block is p=
resent when executing uhd_usrp_probe.
 The problem is that the block shows up as &quot;* 0/Block#0&quot;, and not=
 &quot;* 0/Gain#0&quot;. Basically, I&#39;m trying to go through the tuturi=
al.=C2=A0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 _____________________________________________________
<div>| =C2=A0 =C2=A0/</div>
<div>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC blocks on this device:</div>
<div>| =C2=A0 | =C2=A0 </div>
<div>| =C2=A0 | =C2=A0 * 0/Block#0</div>
<div>| =C2=A0 | =C2=A0 * 0/DDC#0</div>
<div>| =C2=A0 | =C2=A0 * 0/DUC#0</div>
<div>| =C2=A0 | =C2=A0 * 0/DmaFIFO#0</div>
<div>| =C2=A0 | =C2=A0 * 0/Radio#0</div>
=C2=A0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I&#39;ve confirmed that I have a gain.yml file under my ../uhd/rfnoc/blocks=
 folder with the correct noc_id. If I do a uhd_usrp_probe with the --init-o=
nly option, I get:<br>
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
------------------------------</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0xbdc26af=
0, 0xffff<br>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif">
------------------------------</div>
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I confirmed that this Noc-ID matches the ID in my gain.yml file. I started =
digging into uhd_usrp_probe code (I&#39;m not a C++ person) and noticed tha=
t the registry_factory section of code has &quot;FIXME TODO&quot; under the=
 descriptor registry section, but has code for
 the direct registry section:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
-------------------------------</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
block_factory_info_t factory::get_block_factory(noc_id_t noc_id, device_typ=
e_t device_id)
<div>{</div>
<div>=C2=A0 =C2=A0 // First, check the descriptor registry</div>
<div>=C2=A0 =C2=A0 // FIXME TODO</div>
<div><br>
</div>
<div>=C2=A0 =C2=A0 // Second, check the direct registry</div>
<div>=C2=A0 =C2=A0 block_device_pair_t key{noc_id, device_id};</div>
<div><br>
</div>
<div>=C2=A0 =C2=A0 if (!get_direct_block_registry().count(key)) {</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 key =3D block_device_pair_t(noc_id, ANY_DE=
VICE);</div>
<div>=C2=A0 =C2=A0 }</div>
<div>=C2=A0 =C2=A0 if (!get_direct_block_registry().count(key)) {</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 UHD_LOG_WARNING(&quot;RFNOC::BLOCK_FACTORY=
&quot;,</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;Could not find block w=
ith Noc-ID &quot; &lt;&lt; std::hex &lt;&lt; &quot;0x&quot; &lt;&lt; key.fi=
rst &lt;&lt; &quot;, 0x&quot;</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &lt;&lt; key.second &lt;&lt; std::dec);</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 key =3D block_device_pair_t(DEFAULT_NOC_ID=
, ANY_DEVICE);</div>
<div>=C2=A0 =C2=A0 }</div>
<div>=C2=A0 =C2=A0 return get_direct_block_registry().at(key);</div>
}</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
----------------------------------<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Does this mean that uhd_usrp_probe is not even looking at the yml files and=
 only looks for directly registered blocks? I&#39;m not sure what directly =
registered means and if my example &quot;gain&quot; block should somehow be=
 directly registered.=C2=A0=C2=A0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I was thinking that this is just something incomplete that doesn&#39;t work=
 with UHD right now, but in the &quot;Getting Started with RFNoC in UHD 4.0=
&quot; guide (<a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in=
_UHD_4.0" id=3D"gmail-m_-7040286343267471537gmail-m_8034339854570578168LPln=
k619354" target=3D"_blank">https://kb.ettus.com/Getting_Started_with_RFNoC_=
in_UHD_4.0</a>),
 they show the Gain block showing up correctly when doing a uhd_usrp_probe.=
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
So, I don&#39;t understand why this isn&#39;t working or how it should work=
. Some background, I cloned/built:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
1) UHD (v4.0.0.0 tag)</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
2) gnuradio (3.8.2.0 tag)</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
3) gr-ettus (maint-3.8-uhd4.0 branch)</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I &quot;believe&quot; my paths/environment are setup correctly.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thanks for any help.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000b9bdb005af876c7f--


--===============4266516995114423663==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4266516995114423663==--

