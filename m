Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 976A5723251
	for <lists+usrp-users@lfdr.de>; Mon,  5 Jun 2023 23:33:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E714C384256
	for <lists+usrp-users@lfdr.de>; Mon,  5 Jun 2023 17:33:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686000815; bh=eU47tR1qG2xPLKcvlnARTwZGi4BLEnZKdaV5gx1AV20=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Ys0BL1dTmk9aMNFpc2CRBNqcLaVix9rn8IYgz73owhcnte6ffJ+lsEp6koGhjga1Q
	 Vi2QurPNP4gG4Arct30UasI1GtVot9qEeDH+aQGZs7dVeCNO7g8+PMTA0/CYqr18TN
	 xELg85A+6nkdsJUAmN4V2UAxckPgpi6OiGecYS51938rzcWZDrG1Osynn5Mu0y8CyO
	 zbMK6CPz3KhbiP+J+FepzhwpSx7FfAjnAFAUyN5WYvNODvpidsqor2ju8EtvSETUCT
	 Ub3UjYIAdViVUkjAON55bxoaKj2rOu2Mp9K7ms0rS5v9KG+yAxenhUQ5+UmdAfQdKg
	 1v6AbxAuzbNQQ==
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	by mm2.emwd.com (Postfix) with ESMTPS id B078B3838E9
	for <usrp-users@lists.ettus.com>; Mon,  5 Jun 2023 17:32:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=chaosinc.com header.i=@chaosinc.com header.b="QdUav1yF";
	dkim-atps=neutral
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-543b599054dso1127683a12.1
        for <usrp-users@lists.ettus.com>; Mon, 05 Jun 2023 14:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chaosinc.com; s=google; t=1686000748; x=1688592748;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lB+G1VRcTYHc6fcIY4JKhHLsJ5Vz5qEoQj90qGUM+vo=;
        b=QdUav1yFLirlYxQUsPfkfT0RgPsM4Jyju4Rv4lVCMGu4nvCpjULNQ2X26mrOrED/cG
         PkWD00RqGHGWq65omyBTp8BdQn9XZmdEKijdQLLz4nmQqvDQBJaNtIDFRhsBpHyyknDJ
         wNpLaDrh+IawKYxaxPcYk6l0iCDHVpqV/TeN20v7LuIMz8ZCXqD7IyI13MO/JaSzZIqx
         DITFP92UvYa905fsih/Lj3KKgtPcujyqTCCF7Z2Ic3S7NnpSjvqd+ZGvRIfMRCnGbSKW
         FjcWZy9tnOqKe+MHfJEHhNX5eHzcIND3D4AjBi8QR9FnSJccq9zNJFfE9+DCPkwpUoX4
         RCqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686000748; x=1688592748;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lB+G1VRcTYHc6fcIY4JKhHLsJ5Vz5qEoQj90qGUM+vo=;
        b=aTrKm2Hcnz/jmj6ePUT/mna0Ta62rBwEYBzUOZTP1XJOB8+qisC5eqIqLzHdlY3Ahk
         qYNScV7KmEbqVEQ6bxVCG3zGfSq2W7V55CrlNprCU3UHurwzKFPcy20m6NTSrFD7+O2M
         /wRw+KUivsEwNqbe4UKZ14J5gASRjYSgU36ZFGk3lXJFRH3VLOnq4/A1v1IxejE8kqvG
         tQzxS5C8/anwGq3q7PsoBmcBRS5nxB3oKP6/su6P5q2LPi5qDW0bHi8fpFI3oiasbgoC
         P1df2kMTNEVcrA5LQXDmmcTYq57OnJVpKzVxpCkqSI7haiZIGfSR7XONAsrpTz3iRNHT
         6uoQ==
X-Gm-Message-State: AC+VfDypgdDlNYKxMcA4Ln0bG2x1t+ejfe6KQo4WdjxLhotf8sI93BeT
	4g7wJ4QbC/5LgIrLgdLd83T4/271eu9Q/OZyf/3EPE1zlR2uM63WN7o=
X-Google-Smtp-Source: ACHHUZ6kbzDEdnYPuKDiqeTbvrWd7YKKXKmfqTrIO5uELcX/jDXu/zh8p4jIAzA9SgIAaqSDMgVuumwvNjTiuvVNy18=
X-Received: by 2002:a17:90a:6802:b0:255:fe76:d13c with SMTP id
 p2-20020a17090a680200b00255fe76d13cmr10126994pjj.15.1686000748140; Mon, 05
 Jun 2023 14:32:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAMhTvws54hP-vxo9FwLt9FncOgGsR-Ps+FAe4x9-mnJVy59C0Q@mail.gmail.com>
 <f51e48a3-9d30-2e07-e7e2-a30cc4bab1f9@gmail.com> <CAB__hTQgDtPFOMXqK7-gyAhnc_1Q7=Or9rw2bgBaqwe+_xTSbw@mail.gmail.com>
 <CAMhTvwvb+g+CP_yTedvAfObnjbmUUw+ZOC2J1m3xYbWh_HaC_g@mail.gmail.com> <CAB__hTSa6Gx54yshpFFGEdzmLoO48YTsAR8M0fTdkjqRkM2D3Q@mail.gmail.com>
In-Reply-To: <CAB__hTSa6Gx54yshpFFGEdzmLoO48YTsAR8M0fTdkjqRkM2D3Q@mail.gmail.com>
From: Michael Toussaint <mtoussaint@chaosinc.com>
Date: Mon, 5 Jun 2023 14:32:16 -0700
Message-ID: <CAMhTvwvk-15EvqX3T8ze-+FuLOU4jYxNtkK_K7AYa7OJkAwOAg@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="000000000000af505a05fd68a396"
Message-ID-Hash: 5XC6LVQ4IME6AN66Z2SBLXIGMSMDDLXG
X-Message-ID-Hash: 5XC6LVQ4IME6AN66Z2SBLXIGMSMDDLXG
X-MailFrom: mtoussaint@chaosinc.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO Distribution
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5XC6LVQ4IME6AN66Z2SBLXIGMSMDDLXG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--000000000000af505a05fd68a396
Content-Type: multipart/alternative; boundary="000000000000af505605fd68a394"

--000000000000af505605fd68a394
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Could you share how you're setting up LO sharing in your code, as well as
how you're setting the system clock on the N321?

The functions "configure_channels" and "set_lo_hw_exports" are used to set
up the LO sharing.

The functions "sync_sources" and "sync_all_devices" are used to set up the
system clock on the N321.

How do you measure the relative delay?

We are measuring the offset of the LO's by just measuring the phase
difference of the RF coming out of the Ettus with an Oscilloscope (picture
attached as
Scope_Trace_SingleStream_LO.png
<https://mail.google.com/mail/u/0?ui=3D2&ik=3D34abf4583b&attid=3D0.1&permms=
gid=3Dmsg-a:r-1207093291428225864&view=3Datt&disp=3Dsafe&realattid=3Df_lijc=
ykt50>).
Yellow is Channel 1, Green is Channel 2; using a single streamer we still
appear to have a 2.64ns delta or ~135 degree phase shift.

Thanks Marcus and Rob for your assistance.

Michael Toussaint

def sync_sources(usrp):
    logging.info('Setting Sync Sources')

    usrp.set_sync_source(clock_source =3D 'gpsdo',
                         time_source =3D 'gpsdo')

def sync_all_devices(hw_info):
    logging.info('Syncing All Devices')

    mb_with_gps_locked =3D -1

    while 1:
        time.sleep(1.0)

        all_ref_locked =3D True

        for board in range(hw_info.usrp.get_num_mboards()):
            all_ref_locked =3D all_ref_locked and \
                hw_info.usrp.get_mboard_sensor('ref_locked',
                                               board).to_bool()

            if (mb_with_gps_locked =3D=3D -1) and \
                hw_info.usrp.get_mboard_sensor('gps_locked',
                                               board).to_bool():
                mb_with_gps_locked =3D board

        if all_ref_locked:
            logging.info('All Devices are REF locked')
            break

    logging.info('GPS Locked on MB #%d', mb_with_gps_locked)

    time.sleep(1.0)
    hw_info.usrp.set_time_next_pps(
        uhd.types.TimeSpec(
        hw_info.usrp.get_mboard_sensor('gps_time',
                                       mb_with_gps_locked).to_int() +
                                       1.0)
    )
    time.sleep(1.0)


def configure_channels(usrp, rf_type, hw_info):
    rf_channel_index =3D None
    set_rf_rate =3D None
    set_rf_freq =3D None
    set_rf_gain =3D None
    set_rf_lo_source =3D None
    get_rf_lo_source =3D None
    get_rf_lo_freq =3D None
    get_rf_lo_freq_range =3D None

    if (rf_type =3D=3D 'rx'):
        if (len(hw_info.rx_channel_index) > 0):
            rf_channel_index =3D hw_info.rx_channel_index
            set_rf_rate =3D usrp.set_rx_rate
            set_rf_freq =3D usrp.set_rx_freq
            set_rf_gain =3D usrp.set_rx_gain
            set_rf_lo_source =3D usrp.set_rx_lo_source
            get_rf_lo_source =3D usrp.get_rx_lo_source
            get_rf_lo_freq =3D usrp.get_rx_lo_freq
            get_rf_lo_freq_range =3D usrp.get_rx_lo_freq_range
        else:
            return
    elif (rf_type =3D=3D 'tx'):
        if (len(hw_info.tx_channel_index) > 0):
            rf_channel_index =3D hw_info.tx_channel_index
            set_rf_rate =3D usrp.set_tx_rate
            set_rf_freq =3D usrp.set_tx_freq
            set_rf_gain =3D usrp.set_tx_gain
            set_rf_lo_source =3D usrp.set_tx_lo_source
            get_rf_lo_source =3D usrp.get_tx_lo_source
            get_rf_lo_freq =3D usrp.get_tx_lo_freq
            get_rf_lo_freq_range =3D usrp.get_tx_lo_freq_range
        else:
            return

    logging.info('Configuring %s Channels', rf_type.upper())

    for rf_ch_name, rf_ch_index in rf_channel_index.items():
        logging.info('Configuring %s channel %s (channel #%d)',
                     rf_type.upper(), rf_ch_name, rf_ch_index)

        ch_def =3D hw_info.channel_def[rf_ch_name]

        # LO Channel Setup
        current_lo_name =3D 'unknown'
        current_lo_src =3D 'unknown'

        if ch_def.lo_inputs is not None:
            logging.info('  Setting %s LO for Channel %s (#%d)',
                         rf_type.upper(), rf_ch_name, rf_ch_index)

            set_rf_lo_source(ch_def.lo_inputs.source,
                             ch_def.lo_inputs.name,
                             rf_ch_index)
            current_lo_name =3D ch_def.lo_inputs.name

            logging.info('    (#%d) Requested %s LO name %s, src %s',
                         rf_ch_index,
                         rf_type.upper(),
                         ch_def.lo_inputs.name,
                         ch_def.lo_inputs.source)
        else:
            logging.info('  No %s LO inputs for Channel %s (#%d)',
                         rf_type.upper(), rf_ch_name, rf_ch_index)

            current_lo_name =3D 'lo1'

        current_lo_src =3D get_rf_lo_source(current_lo_name,
                                          rf_ch_index)

        logging.info('    (#%d) Current %s LO name %s, src %s',
                     rf_ch_index,
                     rf_type.upper(),
                     current_lo_name,
                     current_lo_src)

        rf_lo_freq =3D get_rf_lo_freq(current_lo_name,
                                    rf_ch_index)

        logging.info('    (#%d) [%s] Current %s LO freq %d',
                         rf_ch_index,
                         current_lo_name,
                         rf_type.upper(),
                         rf_lo_freq)

        rf_lo_freq_range =3D get_rf_lo_freq_range(
            current_lo_name, rf_ch_index)

        temp =3D '    (#%d) [%s] Current %s LO freq range' + \
            ' [%d, %d] step %d'

        logging.info(temp,
                     rf_ch_index,
                     current_lo_name,
                     rf_type.upper(),
                     rf_lo_freq_range.start(),
                     rf_lo_freq_range.stop(),
                     rf_lo_freq_range.step())

        logging.info('  Setting Sampling Rate %s', hw_info.fs)
        set_rf_rate(hw_info.fs, rf_ch_index)

        logging.info('  Setting Center Freq %s', hw_info.fc)
        tr =3D set_rf_freq(uhd.libpyuhd.types.tune_request(hw_info.fc),
                         rf_ch_index)

        logging.info('    (#%d) %s Tune Result:',
                     rf_ch_index, rf_type.upper())
        log_tune_result(tr)

        logging.info('  Setting %s Gain: %2.3f db',
                     rf_type.upper(),
                     ch_def.gain)
        set_rf_gain(ch_def.gain, rf_ch_index)

def set_lo_hw_exports(usrp, node_name, dirx, lo_enabled, output_array):
    """Set LO HW Exports"""
    if (lo_enabled is None) or (output_array is None):
        return

    logging.info('Setting %s LO Export Enabled for %s',
                 dirx.upper(), node_name)

    if dirx.lower() =3D=3D 'rx':
        usrp.set_rx_lo_export_enabled(lo_enabled, 'lo1', 0)
        enable_val =3D usrp.get_rx_lo_export_enabled('lo1')
    elif dirx.lower() =3D=3D 'tx':
        usrp.set_tx_lo_export_enabled(lo_enabled, 'lo1', 0)
        enable_val =3D usrp.get_tx_lo_export_enabled('lo1')
    else:
        logging.warning('Invalid direction %s', dirx)
        return

    logging.info('  %s LO Export Enabled =3D %s, requested %s',
                 dirx.upper(), enable_val, lo_enabled)

    temp_path =3D 'blocks/0/Radio#0/dboard/' + \
        f'{dirx.lower()}_frontends/' + \
        '0/los/lo1/lo_distribution/LO_OUT_{}/export'

    logging.info('Setting %s LO HW Outputs for %s',
                 dirx.upper(), node_name)

    for out_num in range(len(output_array)):
        hw_lo_export_path =3D temp_path.format(out_num)

        if usrp.get_tree().exists(hw_lo_export_path):
            usrp.get_tree().access_bool(hw_lo_export_path).set(
                output_array[out_num])

            logging.info('  %s LO HW Export Out[%d] =3D %s, %s %s',
                         dirx.upper(), out_num,
                         usrp.get_tree().access_bool(
                            hw_lo_export_path).get(),
                        'requested',
                        output_array[out_num])
        else:
            logging.warning('  %s LO HW Export Out[%d] does not exist',
                            dirx.upper(), out_num)


On Thu, May 25, 2023 at 6:45=E2=80=AFAM Rob Kossler <rkossler@nd.edu> wrote=
:

> On Thu, May 25, 2023 at 3:54=E2=80=AFAM Michael Toussaint
> <mtoussaint@chaosinc.com> wrote:
> >
> > Used a single streamer and saw the delay slightly improve to between 2.=
5
> - 3 ns.
> >
> > Any other suggestions to improve the delay to match the results from th=
e
> knowledge base, https://kb.ettus.com/USRP_N320/N321_LO_Distribution?
>
> How do you measure the relative delay?
>

--000000000000af505605fd68a394
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><font color=3D"#9900ff">Could you share h=
ow you&#39;re setting up LO sharing in your code, as well as how you&#39;re=
 setting the system clock on the N321?</font><div><font color=3D"#9900ff"><=
br></font></div><div>The functions &quot;<span style=3D"background-color:rg=
b(255,255,255)"><font color=3D"#ff9900">configure_channels</font></span>&qu=
ot; and &quot;<font color=3D"#ff9900">set_lo_hw_exports</font>&quot; are us=
ed to set up the LO sharing.<br><br>The functions &quot;<font color=3D"#ff9=
900">sync_sources</font>&quot; and &quot;<font color=3D"#ff9900">sync_all_d=
evices</font>&quot; are used to set up the system clock on the N321.<font c=
olor=3D"#9900ff"><br></font></div><div><br></div><div><div><font color=3D"#=
9900ff">How do you measure the relative delay?</font></div><div><br></div><=
div>We are measuring the offset of the LO&#39;s by just measuring the phase=
 difference of the RF coming out of the Ettus with an Oscilloscope (picture=
 attached as=C2=A0=C2=A0<a class=3D"gmail-dO" id=3D"gmail-:tl" href=3D"http=
s://mail.google.com/mail/u/0?ui=3D2&amp;ik=3D34abf4583b&amp;attid=3D0.1&amp=
;permmsgid=3Dmsg-a:r-1207093291428225864&amp;view=3Datt&amp;disp=3Dsafe&amp=
;realattid=3Df_lijcykt50" target=3D"_blank" style=3D"padding:0px 8px 0px 0p=
x;text-decoration-line:none;font-family:&quot;Google Sans&quot;,Roboto,Robo=
toDraft,Helvetica,Arial,sans-serif;font-size:14px;font-weight:700"><div cla=
ss=3D"gmail-vI" style=3D"display:inline-block;overflow:hidden;padding:3px 0=
px;text-overflow:ellipsis;vertical-align:bottom;max-width:315px">Scope_Trac=
e_SingleStream_LO.png</div></a>). Yellow is Channel 1, Green is Channel 2; =
using a single streamer we still appear to have a 2.64ns delta or ~135 degr=
ee phase shift.</div><div><br></div><div>Thanks Marcus and Rob for your ass=
istance.</div><div><br></div><div>Michael Toussaint</div><div><br><font col=
or=3D"#ff9900">def sync_sources(usrp):<br>=C2=A0 =C2=A0=C2=A0<a href=3D"htt=
p://logging.info/" target=3D"_blank">logging.info</a>(&#39;Setting Sync Sou=
rces&#39;)<br><br>=C2=A0 =C2=A0 usrp.set_sync_source(clock_source =3D &#39;=
gpsdo&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0time_source =3D &#39;gpsdo&#39;)<br><br>def =
sync_all_devices(hw_info):<br>=C2=A0 =C2=A0=C2=A0<a href=3D"http://logging.=
info/" target=3D"_blank">logging.info</a>(&#39;Syncing All Devices&#39;)<br=
><br>=C2=A0 =C2=A0 mb_with_gps_locked =3D -1<br><br>=C2=A0 =C2=A0 while 1:<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 time.sleep(1.0)<br><br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 all_ref_locked =3D True<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 for board=
 in range(hw_info.usrp.get_num_mboards()):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 all_ref_locked =3D all_ref_locked and \<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hw_info.usrp.get_mboard_sensor(&#39;=
ref_locked&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0board).to_bool()<br><br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (mb_with_gps_locked =3D=3D -1) and \<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hw_info.usrp.get_mboar=
d_sensor(&#39;gps_locked&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0board).to_bool():<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mb_with_gps_locked =
=3D board<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if all_ref_locked:<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http://logging.info/" ta=
rget=3D"_blank">logging.info</a>(&#39;All Devices are REF locked&#39;)<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break<br><br>=C2=A0 =C2=A0=C2=A0<=
a href=3D"http://logging.info/" target=3D"_blank">logging.info</a>(&#39;GPS=
 Locked on MB #%d&#39;, mb_with_gps_locked)<br><br>=C2=A0 =C2=A0 time.sleep=
(1.0)<br>=C2=A0 =C2=A0 hw_info.usrp.set_time_next_pps(<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 uhd.types.TimeSpec(<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 hw_info.usrp.=
get_mboard_sensor(&#39;gps_time&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mb_with_gps_locked).to_int() +<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01.0)<br>=C2=A0 =C2=
=A0 )<br>=C2=A0 =C2=A0 time.sleep(1.0)<br><br><br>def configure_channels(us=
rp, rf_type, hw_info):<br>=C2=A0 =C2=A0 rf_channel_index =3D None<br>=C2=A0=
 =C2=A0 set_rf_rate =3D None<br>=C2=A0 =C2=A0 set_rf_freq =3D None<br>=C2=
=A0 =C2=A0 set_rf_gain =3D None<br>=C2=A0 =C2=A0 set_rf_lo_source =3D None<=
br>=C2=A0 =C2=A0 get_rf_lo_source =3D None<br>=C2=A0 =C2=A0 get_rf_lo_freq =
=3D None<br>=C2=A0 =C2=A0 get_rf_lo_freq_range =3D None<br><br>=C2=A0 =C2=
=A0 if (rf_type =3D=3D &#39;rx&#39;):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (le=
n(hw_info.rx_channel_index) &gt; 0):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 rf_channel_index =3D hw_info.rx_channel_index<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_rate =3D usrp.set_rx_rate<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_freq =3D usrp.set_rx_freq<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_gain =3D usrp.set_rx_gain<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_lo_source =3D usrp.set_rx_lo_sour=
ce<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 get_rf_lo_source =3D usrp.g=
et_rx_lo_source<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 get_rf_lo_freq=
 =3D usrp.get_rx_lo_freq<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 get_r=
f_lo_freq_range =3D usrp.get_rx_lo_freq_range<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 else:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return<br>=C2=A0 =C2=
=A0 elif (rf_type =3D=3D &#39;tx&#39;):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (=
len(hw_info.tx_channel_index) &gt; 0):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 rf_channel_index =3D hw_info.tx_channel_index<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_rate =3D usrp.set_tx_rate<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_freq =3D usrp.set_tx_freq<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_gain =3D usrp.set_tx_gain<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_lo_source =3D usrp.set_tx_lo_=
source<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 get_rf_lo_source =3D us=
rp.get_tx_lo_source<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 get_rf_lo_=
freq =3D usrp.get_tx_lo_freq<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 g=
et_rf_lo_freq_range =3D usrp.get_tx_lo_freq_range<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 else:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return<br><br>=C2=
=A0 =C2=A0=C2=A0<a href=3D"http://logging.info/" target=3D"_blank">logging.=
info</a>(&#39;Configuring %s Channels&#39;, rf_type.upper())<br><br>=C2=A0 =
=C2=A0 for rf_ch_name, rf_ch_index in rf_channel_index.items():<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http://logging.info/" target=3D"_blank=
">logging.info</a>(&#39;Configuring %s channel %s (channel #%d)&#39;,<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0rf_type.upper(), rf_ch_name, rf_ch_index)<br><br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ch_def =3D hw_info.channel_def[rf_ch_name]<br><br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 # LO Channel Setup<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 current_lo_nam=
e =3D &#39;unknown&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 current_lo_src =3D &=
#39;unknown&#39;<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if ch_def.lo_inputs is =
not None:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http=
://logging.info/" target=3D"_blank">logging.info</a>(&#39; =C2=A0Setting %s=
 LO for Channel %s (#%d)&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_type.upper(), rf_ch_nam=
e, rf_ch_index)<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_lo_=
source(ch_def.lo_inputs.source,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=
=3D"http://ch_def.lo_inputs.name/" target=3D"_blank">ch_def.lo_inputs.name<=
/a>,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_ch_index)<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 current_lo_name =3D=C2=A0<a href=3D"http://ch_def.lo_i=
nputs.name/" target=3D"_blank">ch_def.lo_inputs.name</a><br><br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http://logging.info/" targe=
t=3D"_blank">logging.info</a>(&#39; =C2=A0 =C2=A0(#%d) Requested %s LO name=
 %s, src %s&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_ch_index,<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_typ=
e.upper(),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://ch_def.lo_inputs.name/" ta=
rget=3D"_blank">ch_def.lo_inputs.name</a>,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ch_def.lo_inp=
uts.source)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http://logging.info/" target=3D"_blank=
">logging.info</a>(&#39; =C2=A0No %s LO inputs for Channel %s (#%d)&#39;,<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0rf_type.upper(), rf_ch_name, rf_ch_index)<br><br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 current_lo_name =3D &#39;lo1&#39;<br><br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 current_lo_src =3D get_rf_lo_source(current_lo=
_name,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 rf_ch_index)<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"=
http://logging.info/" target=3D"_blank">logging.info</a>(&#39; =C2=A0 =C2=
=A0(#%d) Current %s LO name %s, src %s&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_ch_index,<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_type.u=
pper(),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0current_lo_name,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0current_lo_src)<br><br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 rf_lo_freq =3D get_rf_lo_freq(current_lo_name,<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rf_ch_index)<br><br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0=C2=A0<a href=3D"http://logging.info/" target=3D"_blank">loggi=
ng.info</a>(&#39; =C2=A0 =C2=A0(#%d) [%s] Current %s LO freq %d&#39;,<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0rf_ch_index,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0current_lo_name,<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0rf_type.upper(),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_lo_freq)<br><br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 rf_lo_freq_range =3D get_rf_lo_freq_range(<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 current_lo_name, rf_ch_index)<br><br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 temp =3D &#39; =C2=A0 =C2=A0(#%d) [%s] Current %s LO =
freq range&#39; + \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39; [%d,=
 %d] step %d&#39;<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http:/=
/logging.info/" target=3D"_blank">logging.info</a>(temp,<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_ch_index,<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0current_lo_name,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0rf_type.upper(),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_lo_freq_range.start(),<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0rf_lo_freq_range.stop(),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_lo_freq_range.step())<br><br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http://logging.info/" target=3D"_blank=
">logging.info</a>(&#39; =C2=A0Setting Sampling Rate %s&#39;, hw_info.fs)<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_rate(hw_info.fs, rf_ch_index)<br><br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http://logging.info/" target=3D=
"_blank">logging.info</a>(&#39; =C2=A0Setting Center Freq %s&#39;, hw_info.=
fc)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 tr =3D set_rf_freq(uhd.libpyuhd.types.tu=
ne_request(hw_info.fc),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_ch_index)<br><br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0=C2=A0<a href=3D"http://logging.info/" target=3D"_blank">logg=
ing.info</a>(&#39; =C2=A0 =C2=A0(#%d) %s Tune Result:&#39;,<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_ch_ind=
ex, rf_type.upper())<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 log_tune_result(tr)<br>=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http://logging.info/" targe=
t=3D"_blank">logging.info</a>(&#39; =C2=A0Setting %s Gain: %2.3f db&#39;,<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0rf_type.upper(),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0ch_def.gain)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_=
gain(ch_def.gain, rf_ch_index)<br><br>def set_lo_hw_exports(usrp, node_name=
, dirx, lo_enabled, output_array):<br>=C2=A0 =C2=A0 &quot;&quot;&quot;Set L=
O HW Exports&quot;&quot;&quot;<br>=C2=A0 =C2=A0 if (lo_enabled is None) or =
(output_array is None):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return<br><br>=C2=A0=
 =C2=A0=C2=A0<a href=3D"http://logging.info/" target=3D"_blank">logging.inf=
o</a>(&#39;Setting %s LO Export Enabled for %s&#39;,<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dirx.upper(), node_name)<br><b=
r>=C2=A0 =C2=A0 if dirx.lower() =3D=3D &#39;rx&#39;:<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 usrp.set_rx_lo_export_enabled(lo_enabled, &#39;lo1&#39;, 0)<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 enable_val =3D usrp.get_rx_lo_export_enabled(&#=
39;lo1&#39;)<br>=C2=A0 =C2=A0 elif dirx.lower() =3D=3D &#39;tx&#39;:<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 usrp.set_tx_lo_export_enabled(lo_enabled, &#39;lo1=
&#39;, 0)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 enable_val =3D usrp.get_tx_lo_expo=
rt_enabled(&#39;lo1&#39;)<br>=C2=A0 =C2=A0 else:<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 logging.warning(&#39;Invalid direction %s&#39;, dirx)<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 return<br><br>=C2=A0 =C2=A0=C2=A0<a href=3D"http://loggin=
g.info/" target=3D"_blank">logging.info</a>(&#39; =C2=A0%s LO Export Enable=
d =3D %s, requested %s&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0dirx.upper(), enable_val, lo_enabled)<br><br>=C2=A0 =C2=
=A0 temp_path =3D &#39;blocks/0/Radio#0/dboard/&#39; + \<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 f&#39;{dirx.lower()}_frontends/&#39; + \<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &#39;0/los/lo1/lo_distribution/LO_OUT_{}/export&#39;<br><br>=C2=
=A0 =C2=A0=C2=A0<a href=3D"http://logging.info/" target=3D"_blank">logging.=
info</a>(&#39;Setting %s LO HW Outputs for %s&#39;,<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dirx.upper(), node_name)<br><br>=
=C2=A0 =C2=A0 for out_num in range(len(output_array)):<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 hw_lo_export_path =3D temp_path.format(out_num)<br><br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 if usrp.get_tree().exists(hw_lo_export_path):<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp.get_tree().access_bool(hw_lo_ex=
port_path).set(<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
output_array[out_num])<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=
=A0<a href=3D"http://logging.info/" target=3D"_blank">logging.info</a>(&#39=
; =C2=A0%s LO HW Export Out[%d] =3D %s, %s %s&#39;,<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dirx.=
upper(), out_num,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0usrp.get_tree().access_bool(<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 hw_lo_export_path).get(),<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;requested&=
#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 output_array[out_num])<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 els=
e:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 logging.warning(&#39; =C2=
=A0%s LO HW Export Out[%d] does not exist&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 d=
irx.upper(), out_num)</font></div></div><div><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 25, 2023=
 at 6:45=E2=80=AFAM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" targ=
et=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">On Thu, May 25, 2023 at 3:54=E2=80=AFAM Michae=
l Toussaint<br>
&lt;<a href=3D"mailto:mtoussaint@chaosinc.com" target=3D"_blank">mtoussaint=
@chaosinc.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Used a single streamer and saw the delay slightly improve to between 2=
.5 - 3 ns.<br>
&gt;<br>
&gt; Any other suggestions to improve the delay to match the results from t=
he knowledge base, <a href=3D"https://kb.ettus.com/USRP_N320/N321_LO_Distri=
bution" rel=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/USRP_N320=
/N321_LO_Distribution</a>?<br>
<br>
How do you measure the relative delay?<br>
</blockquote></div><br clear=3D"all"><div><br></div>
</div>

--000000000000af505605fd68a394--

--000000000000af505a05fd68a396
Content-Type: image/png; name="Scope_Trace_SingleStream_LO.png"
Content-Disposition: attachment; filename="Scope_Trace_SingleStream_LO.png"
Content-Transfer-Encoding: base64
Content-ID: <f_lijcykt50>
X-Attachment-Id: f_lijcykt50

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
OgKBQGQWAOQDNHmfaLgJIRcvXuzevfsrr7xSXFxMCGFZlq5d466AtiwqKrrjjjsmTZr09NNPnzlz
pnfv3iaTKWkw6NGjh9frNc59CgaDXbp0od+9Z8+ehvruSiEUCl111VUpnQ9CSFNTU/du3f780ksl
JSUsx8WiUZbjOI4jib8JcblcM6ZPHztmzLPPP//td9916dIlUcwA0Lt376amJkOx2rVr16Kioubm
ZtRY/hAOh6lPnFLAwWCwb58+Gan3m3Pn3G5323SM2pbpIxAIBEIMTLK907fffjtu3LgVK1a4XK5Y
LBaNRmOxGM39c1fGG/qboqio6Le//e3EiRO/+uor4b9CA5vNZsC578J3xznTMnOehIsXL44eOfLl
F190Op3hcDgSDkcjkVg0Grui6lgsxrEsd0XbhW73rx9+eOzIkXV1dUkvZcy7abfbUcMyINGiCvB6
vePHjMlUveNGjWpsbEx6qZSvnx45dr3cXxaBQCAQkL4C4HQ6u3fvTncmcTgcABAOh0Oh0IULF86d
OxcIBDo038Jjr9c7bty4Rx991GKx0FWS1GoL3r8wEYg+jsViHMdZLBaPx9PY2Pj111936dIF7xZC
DWhpaRk9cuTiRYtMJlMoFAIAwnGRSOTdTZuOf/nlqTPfXqirc7lcZf36DBo4YOrkySaTiWVZi9n8
j3fd1ej1nj1/Ps1sCgRC2vA16UosFhs3Zszin/88Ub2jfjOhbtxdp6c9GIvF2FiMhgGD977S79hf
N8z9f1S9VT/+sbep6fSZMymXZt122219+/al07r+/d///eTJk+vWrUv/SVKic+fOmzZtunDhQmJ7
l8vVu3fvRx999L333sN7ikAgEJIFAG2rui6Xa+TIkb169bpw4cKZM2eamppaWloIIU6ns7CwsE+f
PqNGjbp48eLhw4fT1PEFCx6JRC5evPjss89ardZoNCpk/pICgJQPLBbLz372s5///OdOp9PpdOJw
jpJVlvNoNFpfXz/vd7+zFhREwmE6n+fwp58ueXbp5aag89rpBb1GF17XL+q/9Nmlkx+9vW3dxs3z
7/mn4UOHshxnNpnuqap64qmnCgoKcONLhPzqZVm2ubl53r33JqqXcFzTNSOCtqJIJEIDAJqLaSju
7e42hFYDEtVrMpnargm+dOnSU089NWDAgEcfffSTTz55/vnn+/fv/7//+7+0TivecDmdzoMHDz78
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
--000000000000af505a05fd68a396
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--000000000000af505a05fd68a396--
