Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C478CDBE8
	for <lists+usrp-users@lfdr.de>; Mon,  7 Oct 2019 08:46:09 +0200 (CEST)
Received: from [::1] (port=44970 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iHMmT-0006oS-Am; Mon, 07 Oct 2019 02:46:05 -0400
Received: from mail-lj1-f177.google.com ([209.85.208.177]:36235)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ishai.alouche@gmail.com>)
 id 1iHMmP-0006jo-Bq; Mon, 07 Oct 2019 02:46:01 -0400
Received: by mail-lj1-f177.google.com with SMTP id v24so12350539ljj.3;
 Sun, 06 Oct 2019 23:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qj9VYfpqpG4/FvjPfljhGd8b7ZVpjPKaJG+2lrcME2o=;
 b=o2iAShDVheOf+sKBE5AvGjNfzhif8qYAAllzK/uWsm6S3D2sMVfmxfvWfL1U4QSKD5
 ElAP/E7D+ZC8P65AaStkLQXBi/QkFl7mEnQnHoKhrlZQ8c3FR46Ot6050DwaPuqG6wt2
 KFbJog78jM8ZdTjHX4HJpR6wQ3dVktA1Vzv5ydK/nKF0zDPlshQlxMhDVt93T66aS8F7
 G4WqyjhEygMWvPp49pbga3Vo5nhcthYeJ9fmPghpLIU3uPskEBkMdqH1kVa6EioDVE1r
 if2K6P4nZPpj97YgCDwSgeDdDphtmG8vsyc+0v2Mnb0xdj1+n0mEyKfvDn1rWC20N0aX
 PvrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qj9VYfpqpG4/FvjPfljhGd8b7ZVpjPKaJG+2lrcME2o=;
 b=hLDBBUiZGBcArA3yY/0/8UeNQnYD/2sTFa7HJg3PG1lJKhWG+ZfIo5MWlVZeuTURfb
 zMgaegE+Xs6sWqfWViQwCyMNj0eBpqYx2C06n0i/IYm3w7k5HpIfEnmzDlFGiWXSRz0g
 PjEeG/Uj6CjidTVWBnCCxANaI+knjSqRich4+davVig+qBzF/jnu5TBXBaBH90CXEv3+
 x4Hn6v5ugD3jSBF3xK+zQ1gmdZhkSe25dASNc9dSj+0NGrGAFwaJhrijQt/q7LTMn3za
 0vDwBH/9U2UZsjBtmKCxWFtVXVNxsHS1RhAUT4RMD8DYt5m8Y8+XjKM67K4F8yXQwBAh
 IlWg==
X-Gm-Message-State: APjAAAVcW003xd0xsTFFhUD4T7pC2U9f0xojrmdoSePpxYdJXKUroFeo
 mLI/WzgoQlwvYEpzbnlbt/h2qLywkPb9QnZ5853EbA==
X-Google-Smtp-Source: APXvYqwk9srGrcCpY+QilfyM3neBNfG9TYo8BJ2t6S++ptzwNcp/ouQmZpMkxhPu1mfakHDedQyVb37vt7yjPlPpiRc=
X-Received: by 2002:a2e:9898:: with SMTP id b24mr17476073ljj.157.1570430699778; 
 Sun, 06 Oct 2019 23:44:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAMHwfuhyeNxaMvFh0zQ=PrCTb7RVOhyKVhE5KQ8evkERikKYtQ@mail.gmail.com>
In-Reply-To: <CAMHwfuhyeNxaMvFh0zQ=PrCTb7RVOhyKVhE5KQ8evkERikKYtQ@mail.gmail.com>
Date: Mon, 7 Oct 2019 09:44:48 +0300
Message-ID: <CAC8T01kvgOVCmAXf3iAka8YNhKCFMf9G3-nc0sHSKwTtyD74Dw@mail.gmail.com>
To: usrp-users@lists.ettus.com, usrp-users-request@lists.ettus.com
Subject: [USRP-users] Fwd: Failing to Instantiate Blocks ("No Binding
 Entity")
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
From: ishai alouche via USRP-users <usrp-users@lists.ettus.com>
Reply-To: ishai alouche <ishai.alouche@gmail.com>
Cc: "shachar J. brown" <shachar.brown@gmail.com>
Content-Type: multipart/mixed; boundary="===============3025527597774396048=="
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

--===============3025527597774396048==
Content-Type: multipart/alternative; boundary="00000000000001374505944c6453"

--00000000000001374505944c6453
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

In my architecture I instantiated an FM_block.vhd, and in the FM_block I
instantiated a generic_counter.vhd block.

The problem:

when I run the simulation I see that the FM_block is fine, but the
generic_counter is unreferenced, and i get the following warning:



*Starting static elaborationWARNING: [VRFC 10-122] generic_counter remains
a black-box since it has no binding entity
[/home/user/rfnoc_01/rfnoc-modules/rfnoc/fpga-src/FM_block.vhd:38]WARNING:
[VRFC 10-122] generic_counter remains a black-box since it has no binding
entity [/home/user/rfnoc_01/rfnoc-modules/rfnoc/fpga-src/FM_block.vhd:50]*

I have also opened the project in Vivado and noticed the same thing: The
file is unreferenced.

Furthermore, I add the path of the two files (FM_block and generic_counter)
to all of the Make files I could find, but to no avail.

Please help!

Thank in advance,
Ish

P.S. Further information:

The syntax used to instantiate the FM_block is as follows (verilog):



*  FM_block #(.COUNTER_WIDTH(22))  FM_block_i (.clk(ce_clk),
 .rst(ce_rst), .en (s_axis_data_tready), .min_BW(min_BW),
      .max_BW(max_BW), .BW_change_rate(BW_change_rate), .FM_out(data_out));*

And the syntax used to instantiate the generic_counter is as follows (vhdl):











*counter_change_rate : generic_counter  generic map(COUNTER_WIDTH =>
COUNTER_WIDTH)  port map( clk        => clk,          rst          => rst,
        en          => en,          min_val      => (others => '0'),
  max_val      => BW_change_rate,          new_output    =>
change_freq_en,          count_out  => open        );*

--00000000000001374505944c6453
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">Hi everyone,<d=
iv><br></div><div>In my architecture I instantiated an FM_block.vhd, and in=
 the FM_block I instantiated a generic_counter.vhd block.</div><div><br></d=
iv><div><div><div>The problem:</div><div><br></div><div>when I run the simu=
lation I see that the FM_block is fine, but the generic_counter is unrefere=
nced, and i get the following warning:</div><b><div><b><br></b></div>Starti=
ng static elaboration<br>WARNING: [VRFC 10-122] generic_counter remains a b=
lack-box since it has no binding entity [/home/user/rfnoc_01/rfnoc-modules/=
rfnoc/fpga-src/FM_block.vhd:38]<br>WARNING: [VRFC 10-122] generic_counter r=
emains a black-box since it has no binding entity [/home/user/rfnoc_01/rfno=
c-modules/rfnoc/fpga-src/FM_block.vhd:50]</b></div><div><b><br></b></div><d=
iv>I have also opened the project in Vivado and noticed the same thing: The=
 file is unreferenced.</div><div><br></div><div>Furthermore, I add the path=
 of the two files (FM_block and generic_counter) to all of the Make files I=
 could find, but to no avail.</div><div><br></div><div>Please help!<div><br=
></div><div>Thank in advance,</div><div>Ish</div></div></div><div><br></div=
><div>P.S. Further information:</div><div><br></div><div><div>The syntax us=
ed to instantiate the FM_block is as follows (verilog):</div><b><div><b><br=
></b></div>=C2=A0 FM_block #(.COUNTER_WIDTH(22))<br>=C2=A0 FM_block_i (.clk=
(ce_clk), =C2=A0 =C2=A0.rst(ce_rst), .en (s_axis_data_tready), .min_BW(min_=
BW), =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 .max_BW(max_BW), .BW_change_rate(BW_change_rate), .FM_out=
(data_out));</b><div>=C2=A0<div><div>And the syntax used to instantiate the=
 generic_counter is as follows (vhdl):</div><div><b><br></b></div><div><b>c=
ounter_change_rate : generic_counter<br>=C2=A0 generic map(COUNTER_WIDTH =
=3D&gt; COUNTER_WIDTH)<br>=C2=A0 port map( clk =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D&gt; clk,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rst =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0=3D&gt; rst,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 en =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D&gt; en,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 min_val =C2=A0 =C2=A0 =C2=A0=3D&gt; (others =3D&gt; &#39;0&#39;),<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 max_val =C2=A0 =C2=A0 =C2=A0=3D&gt; BW_c=
hange_rate,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 new_output =C2=A0 =C2=A0=
=3D&gt; change_freq_en,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 count_out =C2=
=A0=3D&gt; open<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 );<br></b></div><b></b></div=
><div><div></div></div></div></div></div>
</div><br clear=3D"all"><div><br></div><br></div>

--00000000000001374505944c6453--


--===============3025527597774396048==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3025527597774396048==--

