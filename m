Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E31A515AA0
	for <lists+usrp-users@lfdr.de>; Sat, 30 Apr 2022 07:35:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 71845384431
	for <lists+usrp-users@lfdr.de>; Sat, 30 Apr 2022 01:35:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651296936; bh=/EJope4l/+eJGokpnAAlG5QbkyjJ6dKaISPPPCp1cpg=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=CrCruUFQ6aU1x2oS1U21FU/OSQVO4Z3fTAosSBQdMkZ3hABDj0wAg3osHeGu+wAAS
	 swL81Yyp4Wzl3xo0L/JYZtfvE34NStZiI94/5yGPoIN0PJaMFN2NECxIeHAXfs44O9
	 JJQq+GQ9+QLiQFH9Tw4y+fu8O/qy9uaeR0KCCImSWQvQgUWDS/V6kIf2DXhI4uCa6f
	 dPO2VBq3BIU1oGvpdUnj/wm7lXuvJp5dcycdkI7MM6tZkEE3Yk+zVJuVtJSk38TCP5
	 l2L9PzS3ROuJYlc0CF3cguPUktxat6REr9a7mA2m6PZoyghnAvIOfTC6ywIR8Vm9Ih
	 IFj6mkXlfF/cQ==
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 9E962384431
	for <usrp-users@lists.ettus.com>; Sat, 30 Apr 2022 01:34:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nR9U000y";
	dkim-atps=neutral
Received: by mail-yb1-f182.google.com with SMTP id v59so17760619ybi.12
        for <usrp-users@lists.ettus.com>; Fri, 29 Apr 2022 22:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=19qs6MRA2Hj/c+4hkb1DYMy7qsxXot8FbDKSxiKzpTc=;
        b=nR9U000y/28CVpwUUGbNQALdI91evVX3TwV9KZJSm13uf25YCGk7uNFrXZGu6J61o/
         5w8VCs8/DSigQ2+NZJ6jOW8N5FuKKwx9wi8kqODXy4v0xetQAazQQ8h5XYUBaoWyITPz
         Wnwft1LlCTVQ7BLYeyFEttplhLuhKBT0RtPvIWMHbPSOrBh47BnilxdH5p9IWqq3+1+v
         RUdRmuvWIlP0W5Cyrdm2VSBhLVbHwCNlb8NWwlpM2l6rlqGcXgaP6CdkCFK0nTiTP0mk
         Po9F1wv2ApTeQTDrbFKcDkga+hibSPWfSFXuulHaI3DUFRaqJEnjsRD2uO16Lwhg8gbN
         Mq/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=19qs6MRA2Hj/c+4hkb1DYMy7qsxXot8FbDKSxiKzpTc=;
        b=cgfKEmRMUoGX5k3Y5K//FBtanDJ/y9bAXbTSD0gDB4Rv1wkFI1OpjIkTXN8Bd6dtw2
         7pSi8g09fVA6/gr40d0B/yaLyrDxZRoMKkpyJBYwDyFi2gLCRFu9D0MqFNkJIFeq0sRt
         pvPLZhxs1sE9CmiuzbdGp/9wpT1FjB1Tb9ZxPVxbWWzrU8/gAUCZpQXrVj0GVzGYc0lZ
         pqt0/97xN3PcGxPQWBiErHVooDn0TVUOo/5RLCHLvhChk5aG0eEXsuUVY696Sqg2RaUy
         8nqOKSKYHcJ/OZBNvjfFNQglnRDNvMD7mSNnqcfLEcUVCd9VXdYvNoTtL0GNKxyVbCA2
         /jLA==
X-Gm-Message-State: AOAM532L+66OQQ/sIBkqKByPHK1NUGM5+TPuWjR11TIAjnRqF1csogX5
	POeTSC9i6wOb3aCC8Uv2lWkp4coXcVORKNu4VWaOrgVGKKebJ1zNvZ4=
X-Google-Smtp-Source: ABdhPJwN4oYG7WFp7sDxNohmreDXbz0oTJn49GzJ1sX4d5fFFuAta4uD+QmpuV+pUIi1cFmwgMRLtTHOo44IabKgLGE=
X-Received: by 2002:a5b:c5:0:b0:648:d8fa:f7ea with SMTP id d5-20020a5b00c5000000b00648d8faf7eamr2610230ybp.132.1651296869352;
 Fri, 29 Apr 2022 22:34:29 -0700 (PDT)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Sat, 30 Apr 2022 10:04:18 +0430
Message-ID: <CAA=S3PuRmRur7uAUietE-Co72kf9tBkGtnbJF_GsXg2v513LTg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 7HN6JMAO2SWWRUNE2YK7URWXUVMURP3Z
X-Message-ID-Hash: 7HN6JMAO2SWWRUNE2YK7URWXUVMURP3Z
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] What's means this warning, CRITICAL WARNING: [Constraints 18-1056] Clock 'FPGA_CLK' completely overrides clock 'FPGA_CLK_p'.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7HN6JMAO2SWWRUNE2YK7URWXUVMURP3Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8754392243702504102=="

--===============8754392243702504102==
Content-Type: multipart/alternative; boundary="0000000000005106d405ddd883fe"

--0000000000005106d405ddd883fe
Content-Type: text/plain; charset="UTF-8"

In the body of an RFNOC block code, I had a for in for and calculation but
when I want to synthesize it I was faced with a clock warning in FPGA. When
I comment on this section this error is disappeared...
So when I used a delay with tag # in some cases warning is removed...

I:Errors:
[00:04:49] Current task: Synthesis +++ Current Phase: Starting
CRITICAL WARNING: [Constraints 18-1056] Clock 'FPGA_CLK' completely
overrides clock 'FPGA_CLK_p'.

II: Code section:
for(i=0;i<32;i=i+1)
begin
d_i_buffer = d_i_buffer>>i;//shift samples buffer
d_q_buffer = d_q_buffer>>i;//shift samples buffer
for(j=0; j<96; j=j+1)
begin
temp_i_mult_result = temp_i_mult_result + d_i_buffer[j]*d_i_p_buffer[j];
temp_q_mult_result = temp_q_mult_result + d_q_buffer[j]*d_q_p_buffer[j];
end
//#300
c_td[i]=temp_i_mult_result+temp_q_mult_result;

end

--0000000000005106d405ddd883fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">In the body of an RFNOC block code, I had a for in for and=
 calculation=C2=A0but when I want to synthesize it I was faced with=C2=A0a =
clock warning in FPGA. When I comment on this section this error is disappe=
ared...<div>So when I used a delay with tag # in some cases warning=C2=A0is=
 removed...<br><div><br><div>I:Errors:</div><div>[00:04:49] Current task: S=
ynthesis +++ Current Phase: Starting<br>CRITICAL WARNING: [Constraints 18-1=
056] Clock &#39;FPGA_CLK&#39; completely overrides clock &#39;FPGA_CLK_p&#3=
9;.<br></div></div><div><br></div><div>II: Code section:</div><div><div sty=
le=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;monosp=
ace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font-size:14px;line-hei=
ght:19px;white-space:pre"><div>      <span style=3D"color:rgb(0,0,255)">for=
</span>(i=3D<span style=3D"color:rgb(9,134,88)">0</span>;i&lt;<span style=
=3D"color:rgb(9,134,88)">32</span>;i=3Di+<span style=3D"color:rgb(9,134,88)=
">1</span>)</div><div>      <span style=3D"color:rgb(0,0,255)">begin</span>=
</div><div>            d_i_buffer =3D d_i_buffer&gt;&gt;i;<span style=3D"co=
lor:rgb(0,128,0)">//shift samples buffer</span></div><div>            d_q_b=
uffer =3D d_q_buffer&gt;&gt;i;<span style=3D"color:rgb(0,128,0)">//shift sa=
mples buffer</span></div><div>          </div><div>         <span style=3D"=
color:rgb(0,0,255)">for</span>(j=3D<span style=3D"color:rgb(9,134,88)">0</s=
pan>; j&lt;<span style=3D"color:rgb(9,134,88)">96</span>; j=3Dj+<span style=
=3D"color:rgb(9,134,88)">1</span>)</div><div>          <span style=3D"color=
:rgb(0,0,255)">begin</span></div><div>              temp_i_mult_result =3D =
temp_i_mult_result + d_i_buffer[j]*d_i_p_buffer[j];</div><div>             =
 temp_q_mult_result =3D temp_q_mult_result + d_q_buffer[j]*d_q_p_buffer[j];=
</div><div>      </div><div>          <span style=3D"color:rgb(0,0,255)">en=
d</span></div><div>          <span style=3D"color:rgb(0,128,0)">//#300</spa=
n></div><div>           c_td[i]=3Dtemp_i_mult_result+temp_q_mult_result;</d=
iv><br><div>         </div><div>      <span style=3D"color:rgb(0,0,255)">en=
d</span></div></div></div></div></div>

--0000000000005106d405ddd883fe--

--===============8754392243702504102==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8754392243702504102==--
