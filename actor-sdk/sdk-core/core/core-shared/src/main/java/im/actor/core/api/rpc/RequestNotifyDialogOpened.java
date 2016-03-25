package im.actor.core.api.rpc;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.runtime.bser.*;
import im.actor.runtime.collections.*;

import static im.actor.runtime.bser.Utils.*;

import im.actor.core.network.parser.*;

import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;

import com.google.j2objc.annotations.ObjectiveCName;

import java.io.IOException;
import java.util.List;
import java.util.ArrayList;

import im.actor.core.api.*;

public class RequestNotifyDialogOpened extends Request<ResponseVoid> {

    public static final int HEADER = 0xae1;

    public static RequestNotifyDialogOpened fromBytes(byte[] data) throws IOException {
        return Bser.parse(new RequestNotifyDialogOpened(), data);
    }

    private ApiOutPeer peer;

    public RequestNotifyDialogOpened(@NotNull ApiOutPeer peer) {
        this.peer = peer;
    }

    public RequestNotifyDialogOpened() {

    }

    @NotNull
    public ApiOutPeer getPeer() {
        return this.peer;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.peer = values.getObj(1, new ApiOutPeer());
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        if (this.peer == null) {
            throw new IOException();
        }
        writer.writeObject(1, this.peer);
    }

    @Override
    public String toString() {
        String res = "rpc NotifyDialogOpened{";
        res += "peer=" + this.peer;
        res += "}";
        return res;
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}
